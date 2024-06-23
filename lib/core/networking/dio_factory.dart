import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration duration = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = duration
        ..options.receiveTimeout = duration;
      addHeader();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  // add header
  static void addHeader() {
    dio?.options.headers = {
      'Accept': 'application/json',
       'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE5MTU3MTAzLCJleHAiOjE3MTkyNDM1MDMsIm5iZiI6MTcxOTE1NzEwMywianRpIjoiT3dhaG9XY01ucnZhS1ZGZiIsInN1YiI6IjM2NyIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jiodXLO3cUJmWfYc_CJf2-kCyidHr9gpS26lpVMjf_g',
    
    };
  }

// debug result
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
