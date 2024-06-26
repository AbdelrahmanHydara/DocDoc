import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';


class TitleAndSubtitleRegister extends StatelessWidget {
  const TitleAndSubtitleRegister({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(
          MyStrings.createAccount,
          style: MyTextStyles.font26PrimaryColorBold,
        ),
        verticalSpace(8),
        Text(
          MyStrings.signUpNow,
          style: MyTextStyles.font14GeryRegular,
        ),
      ],
    );
  }
}
