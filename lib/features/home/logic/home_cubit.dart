import 'package:docdoc/features/home/data/repo/home_repo.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void emitSpeciality() async {
    emit(const HomeState.specialityLoading());
    try {
      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationsResponseModel) {
        emit(HomeState.specialitySuccess(specializationsResponseModel));
      }, failure: (error) {
        emit(HomeState.specialityError(error));
      });
    } catch (error) {}
  }
}
