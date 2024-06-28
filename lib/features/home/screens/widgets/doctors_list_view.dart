import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.network(
                      "",
                      fit: BoxFit.cover,
                      width: 110.w,
                      height: 120.h,
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "name",
                            style: MyTextStyles.font18DarkBlueBold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(5),
                          Text(
                            "Degree | 0114526488456",
                            style: MyTextStyles.font12GeryMedium,
                          ),
                          verticalSpace(5),
                          Text(
                            "Abdo2000@gmail.com",
                            style: MyTextStyles.font12GeryMedium,
                          ),
                        ],
                      ),
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
