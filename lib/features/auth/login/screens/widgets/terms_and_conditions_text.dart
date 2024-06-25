import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget
{
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context)
  {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children:
        [
          TextSpan(
            text: MyStrings.byLogging,
            style: MyTextStyles.font14GeryRegular,
          ),
          TextSpan(
            text: MyStrings.termsConditions,
            style: MyTextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: " and",
            style: MyTextStyles.font14GeryRegular.copyWith(
              height: 1.6,
            ),
          ),
          TextSpan(
            text: MyStrings.privacyPolicy,
            style: MyTextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
