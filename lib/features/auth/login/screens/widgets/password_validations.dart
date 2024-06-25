import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasMinLength;
  final bool hasSpecialCharacters;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasMinLength,
    required this.hasSpecialCharacters,
  });

  Widget buildValidationRow(String text,bool hasValidated) => Row(
    children: [
      const CircleAvatar(
        radius: 3,
        backgroundColor: MyColors.myGery,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: MyTextStyles.font14DarkBlueRegular.copyWith(
          color: hasValidated ? MyColors.myGery : MyColors.myDarkBlue,
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationThickness: 2,
          decorationColor: MyColors.myGreen,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(MyStrings.specialCharacters,hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow(MyStrings.uppercase,hasUpperCase),
        verticalSpace(2),
        buildValidationRow(MyStrings.lowercase,hasLowerCase),
        verticalSpace(2),
        buildValidationRow(MyStrings.number,hasNumber),
        verticalSpace(2),
        buildValidationRow(MyStrings.charactersLong,hasMinLength),
      ],
    );
  }
}
