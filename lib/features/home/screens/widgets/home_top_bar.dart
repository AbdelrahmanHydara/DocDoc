import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Abdelrahman !",
              style: MyTextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are You Today?",
              style: MyTextStyles.font12GeryRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: MyColors.myMoreLighterGery,
          child: SvgPicture.asset("assets/svg/notifications.svg"),
        ),
      ],
    );
  }
}
