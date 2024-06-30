import 'package:docdoc/features/auth/register/data/models/register_request_body.dart';
import 'package:docdoc/features/auth/register/data/repository/register_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository _registerRepository;

  RegisterCubit(this._registerRepository) : super(const RegisterState.initial());

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  void emitRegisterState() async {
    emit(const RegisterState.loading());
    final response = await _registerRepository.register(
        RegisterRequestBody(
          email: emailController.text,
          password: passwordController.text,
          name: nameController.text,
          phone: phoneController.text,
          passwordConfirmation: passwordConfirmationController.text,
          gender: 0,
    ));
    response.when(
        success: (registerResponse) {
          emit(RegisterState.success(registerResponse));
        },
        failure: (error) {
          emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
        }
    );
  }
}
