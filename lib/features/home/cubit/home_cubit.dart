import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc/features/home/data/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;
  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  List<SpecializationDataModel?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepository.getSpecializations();
    response.when(
        success: (specializationResponseModel) {
          specializationsList = specializationResponseModel.SpecializationDataList ?? [];
          // getting the doctors list for the first specialization by default.
          getDoctorsList(specializationId: specializationsList?.first?.id);

          emit(HomeState.specializationsSuccess(specializationsList));
        },
        failure: (errorHandler) {
          emit(HomeState.specializationsError(errorHandler));
        },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorsModel?>? doctorsList =
    getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
