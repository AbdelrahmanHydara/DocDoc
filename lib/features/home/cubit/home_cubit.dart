import 'package:docdoc/features/home/data/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;
  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepository.getSpecializations();
    response.when(
        success: (specializationResponseModel) {
          emit(HomeState.specializationsSuccess(specializationResponseModel));
        },
        failure: (errorHandler) {
          emit(HomeState.specializationsError(errorHandler));
        },
    );
  }
}
