import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:
      [
        SvgPicture.asset(
            "assets/svg/docdoc_logo_low_opacity.svg",
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColors.myWhite,
                MyColors.myWhite.withOpacity(0.0),
              ],
              stops: const [
                0.14,0.4
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset(
             "assets/images/onboarding_doctor.png",
          ),
        ),
        Positioned(
          bottom: 25,
          right: 0,
          left: 0,
          child: Text(
            MyStrings.bestDoctor,
            style: MyTextStyles.font32PrimaryColorBold.copyWith(
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
