import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctors_speciality_list_view_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationDataModel?> specializationDataList;
  const DoctorSpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(
            itemIndex: index,
            specializationsData: specializationDataList[index],
          );
        },
        itemCount: specializationDataList.length
      ),
    );
  }
}
