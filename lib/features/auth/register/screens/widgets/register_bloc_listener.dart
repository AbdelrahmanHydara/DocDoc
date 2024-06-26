import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/features/auth/register/cubit/register_cubit.dart';
import 'package:docdoc/features/auth/register/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget
{
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit,RegisterState>(
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
        success: (registerResponse) {
          context.pop();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            title: MyStrings.signupSuccessful,
            desc: MyStrings.congratulations,
            btnCancelText: MyStrings.next,
            btnCancelOnPress: () {
              context.pushNamed(Routes.loginScreen);
            },
            btnCancelColor: MyColors.myPrimaryColor,
          ).show();
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
