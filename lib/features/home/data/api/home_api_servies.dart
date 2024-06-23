import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_servies.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specialization)
  Future<SpecializationsResponseModel> getSpecialization();
}
