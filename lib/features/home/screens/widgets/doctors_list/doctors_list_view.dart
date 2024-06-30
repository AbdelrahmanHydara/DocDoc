import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<DoctorsModel?>? doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return DoctorsListViewItem(
              doctorsModel: doctorsList?[index],
            );
          },
          itemCount: doctorsList?.length,
        ),
    );
  }
}
