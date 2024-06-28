import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_colors.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationDataModel? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem({super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
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
            specializationsData?.name ?? "Specialization",
            style: MyTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
