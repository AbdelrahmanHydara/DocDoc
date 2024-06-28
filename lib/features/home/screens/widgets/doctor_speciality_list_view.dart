import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(
              start: index == 0 ? 0 : 24.w,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: MyColors.myLightBlue,
                  child: SvgPicture.asset(
                      "",
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Text(
                  "Specialization",
                  style: MyTextStyles.font12DarkBlueRegular,
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
