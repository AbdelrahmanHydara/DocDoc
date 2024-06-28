import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/cubit/home_cubit.dart';
import 'package:docdoc/features/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'doctor_speciality_list_view.dart';
import 'doctors_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
        current is SpecializationsLoading ||
            current is Specializationssuccess || current is Specializationserror,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () => setupLoading(),
            specializationsSuccess: (specializationResponseModel) {
              var specializationList = specializationResponseModel.SpecializationDataList;
              return setupSuccess(specializationList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () => const SizedBox.shrink(),
          );
        }
    );
  }

  Widget setupLoading() => const SizedBox(
    height: 100,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );

  Widget setupSuccess(specializationList) => Expanded(
    child: Column(
      children: [
        DoctorSpecialityListView(
          specializationDataList: specializationList ?? [],
        ),
        verticalSpace(8),
        DoctorsListView(
          doctorsList: specializationList?[0]?.doctorsList,
        ),
      ],
    ),
  );

  Widget setupError() => const SizedBox.shrink();
}
