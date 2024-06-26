import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget
{
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text(
          MyStrings.already,
          style: MyTextStyles.font18DarkBlueMedium,
        ),
        TextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            MyStrings.login,
            style: MyTextStyles.font18PrimaryColorSemiBold,
          ),
        ),
      ],
    );
  }
}
