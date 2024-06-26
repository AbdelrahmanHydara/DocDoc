import 'package:docdoc/core/components/my_text_button.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:docdoc/features/auth/login/screens/widgets/terms_and_conditions_text.dart';
import 'package:docdoc/features/auth/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/already_have_an_account.dart';
import 'widgets/register_bloc_listener.dart';
import 'widgets/register_form.dart';
import 'widgets/title_and_subtitle_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
            vertical: 25.h,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleAndSubtitleRegister(),
                verticalSpace(35),
                const RegisterForm(),
                verticalSpace(38),
                MyTextButton(
                  onPressed: () {
                    if(context.read<RegisterCubit>().formKey.currentState!.validate()) {
                      context.read<RegisterCubit>().emitRegisterState();
                    }
                  },
                  buttonText: MyStrings.createAccount,
                  textStyle: MyTextStyles.font16WhiteSemiMedium,
                ),
                verticalSpace(20),
                const TermsAndConditionsText(),
                verticalSpace(30),
                const AlreadyHaveAnAccount(),
                const RegisterBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
