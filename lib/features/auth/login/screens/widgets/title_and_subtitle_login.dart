import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class TitleAndSubtitleLogin extends StatelessWidget {
  const TitleAndSubtitleLogin({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(
          MyStrings.welcomeBack,
          style: MyTextStyles.font26PrimaryColorBold,
        ),
        verticalSpace(8),
        Text(
          MyStrings.lastLoggedIn,
          style: MyTextStyles.font14GeryRegular,
        ),
      ],
    );
  }
}
