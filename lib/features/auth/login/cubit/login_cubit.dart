import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/shared_pref_helper.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/auth/login/data/models/login_request_body.dart';
import 'package:docdoc/features/auth/login/data/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(
        LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
    );
    response.when(
        success: (loginResponse) async {
          await savaUserToken(loginResponse.data?.token ?? '');
          emit(LoginState.success(loginResponse));
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
        }
    );
  }

  Future<void> savaUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
