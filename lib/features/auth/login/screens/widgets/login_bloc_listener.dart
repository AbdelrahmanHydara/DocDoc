import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/features/auth/login/cubit/login_cubit.dart';
import 'package:docdoc/features/auth/login/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Error,
      listener: (context,state) => state.whenOrNull(
        loading: () {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: MyColors.myPrimaryColor,
              ),
            ),
          );
          return null;
        },
        success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
          return null;
        },
        error: (error) {
          context.pop();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            title: MyStrings.error,
            desc: error,
            btnCancelText: MyStrings.gotIt,

            btnCancelOnPress: () {},
            btnCancelColor: MyColors.myPrimaryColor,
          ).show();
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
