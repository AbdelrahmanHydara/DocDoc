import 'package:docdoc/core/components/my_text_button.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/dont_have_an_account.dart';
import 'widgets/email_and_password.dart';
import 'widgets/terms_and_conditions_text.dart';
import 'widgets/title_and_subtitle_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const TitleAndSubtitleLogin(),
                verticalSpace(40),
                const EmailAndPassword(),
                verticalSpace(25),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Text(
                    MyStrings.forgotPassword,
                    style: MyTextStyles.font14PrimaryColorRegular,
                  ),
                ),
                verticalSpace(40),
                MyTextButton(
                  buttonText: MyStrings.login,
                  textStyle: MyTextStyles.font16WhiteSemiMedium,
                  onPressed: () {
                  },
                ),
                verticalSpace(10),
                const TermsAndConditionsText(),
                verticalSpace(60),
                const DoNotHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
