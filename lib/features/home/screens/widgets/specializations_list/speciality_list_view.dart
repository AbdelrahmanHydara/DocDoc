import 'package:docdoc/features/home/cubit/home_cubit.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationDataModel?> specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {

  int selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });
                context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDataList[index]?.id,
                );
              },
              child: SpecialityListViewItem(
                itemIndex: index,
                specializationsData: widget.specializationDataList[index],
                selectedIndex: selectedSpecializationIndex,
          ),
            );
            },
          itemCount: widget.specializationDataList.length
      ),
    );
  }
}
