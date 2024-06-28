import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: MyTextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          "See All",
          style: MyTextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}
