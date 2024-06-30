import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/cubit/home_cubit.dart';
import 'package:docdoc/features/home/cubit/home_state.dart';
import 'package:docdoc/features/home/screens/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'speciality_list_view.dart';
import 'speciality_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
        current is SpecializationsLoading ||
            current is SpecializationsSuccess || current is SpecializationsError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () => setupSpecializationsLoading(),
            specializationsSuccess: (specializationDataList) {
              var specializationList = specializationDataList;
              return setupSpecializationsSuccess(specializationList);
            },
            specializationsError: (errorHandler) => setupSpecializationsError(),
            orElse: () => const SizedBox.shrink(),
          );
        }
    );
  }

  /// shimmer loading for specializations and doctors.
  Widget setupSpecializationsLoading() => Expanded(
      child: Column(
        children: [
          SpecialityShimmerLoading(),
          verticalSpace(8),
          DoctorsShimmerLoading(),
        ],
      ),
  );

  Widget setupSpecializationsSuccess(specializationList) => SpecialityListView(
    specializationDataList: specializationList ?? [],
  );

  Widget setupSpecializationsError() => const SizedBox.shrink();
}
