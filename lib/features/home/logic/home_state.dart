
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Speciality

  const factory HomeState.specialityLoading() = SpecialityLoading;
  const factory HomeState.specialitySuccess(List<SpecializationsData?>?  specialityModel) = SpecialitySuccess;
  const factory HomeState.specialityError(ErrorHandler error) = SpecialityError;

    const factory HomeState.doctorSuccess(List<Doctors?>? doctorList) = DoctorSuccess;
  const factory HomeState.doctorError(ErrorHandler error) = DoctorError;
  
}
