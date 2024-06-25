import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget
{
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        SvgPicture.asset(
            "assets/svg/docdoc_logo.svg",
        ),
        horizontalSpace(10),
        Text(
          MyStrings.docdoc,
          style: MyTextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
