import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/api/home_api_servies.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _apiService;

  HomeRepo( this._apiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _apiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
