import 'package:docdoc/features/home/cubit/home_cubit.dart';
import 'package:docdoc/features/home/cubit/home_state.dart';
import 'package:docdoc/features/home/screens/widgets/doctors_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) => setupDoctorsSuccess(doctorsList),
          doctorsError: (errorHandler) => setupDoctorsError(),
          orElse: () => const SizedBox.shrink(),);
      },
    );
  }

  Widget setupDoctorsSuccess(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setupDoctorsError() => const SizedBox.shrink();
}
