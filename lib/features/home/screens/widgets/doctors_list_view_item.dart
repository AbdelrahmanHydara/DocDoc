import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem  extends StatelessWidget {
  final DoctorsModel? doctorsModel;
  const DoctorsListViewItem ({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              "https://img.freepik.com/free-photo/asian-young-main-group-hospital-professional_1291-37.jpg?w=1380&t=st=1719577981~exp=1719578581~hmac=3af09b73d5b48dcc4b5df0a40307ac7ad59fdff19b30ddcdb7c9b206401dce62",
              fit: BoxFit.cover,
              width: 150.w,
              height: 125.h,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? "Name",
                  style: MyTextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: MyTextStyles.font12GeryMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? "Email@gmail.com",
                  style: MyTextStyles.font12GeryMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
