import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/data/repo/home_repo.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specialitionsList = [];

  void emitSpeciality() async {
    emit(const HomeState.specialityLoading());
    try {
      final response = await _homeRepo.getSpecialization();
      response.when(
        success: (specializationsResponseModel) {
          specialitionsList =
              specializationsResponseModel.specializationDataList;
          getDoctorsList(specialitionId: specialitionsList?.first?.id);
          emit(HomeState.specialitySuccess(specialitionsList));
        },
        failure: (error) {
          emit(HomeState.specialityError(error));
        },
      );
    } catch (error) {}
  }

  void getDoctorsList({required int? specialitionId}) {
    List<Doctors?>? doctorList = getDoctorsListBySpecialitionId(specialitionId);

    if (!doctorList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorList));
    } else {
      emit(HomeState.doctorError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// fillter doctors list by speciality
  getDoctorsListBySpecialitionId(specialitionId) {
    return specialitionsList
        ?.firstWhere((specialition) => specialition?.id == specialitionId)
        ?.doctorsList;
  }
}
