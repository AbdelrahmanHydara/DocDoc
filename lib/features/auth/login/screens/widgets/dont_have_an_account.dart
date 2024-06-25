import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class DoNotHaveAnAccount extends StatelessWidget
{
  const DoNotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text(
          MyStrings.doNot,
          style: MyTextStyles.font18DarkBlueMedium,
        ),
        horizontalSpace(5),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.registerScreen);
          },
          child: Text(
            MyStrings.signUp,
            style: MyTextStyles.font18PrimaryColorRegular,
          ),
        ),
      ],
    );
  }
}
