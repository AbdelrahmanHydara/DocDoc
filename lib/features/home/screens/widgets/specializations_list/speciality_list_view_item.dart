import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationDataModel? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({super.key, this.specializationsData, required this.itemIndex, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          if (itemIndex == selectedIndex)
            Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.myDarkBlue,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 28.r,
              backgroundColor: MyColors.myLightBlue,
              child: SvgPicture.asset(
                "assets/svg/general_speciality.svg",
                height: 42.h,
                width: 42.w,
              ),
            ),
          )
          else CircleAvatar(
            radius: 28.r,
            backgroundColor: MyColors.myLightBlue,
            child: SvgPicture.asset(
              "assets/svg/general_speciality.svg",
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? "Specialization",
            style: itemIndex == selectedIndex
                ? MyTextStyles.font14DarkBlueBold
                : MyTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
