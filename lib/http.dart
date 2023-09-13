import 'dart:developer' show log;
import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;

  Future<Response> getRequest(endpoint) async {
    Response response;

    try {
      response = await _dio.get(endpoint);
    } on DioException catch (e) {
      log(e.message.toString());
      throw Exception(e);
    }
    return response;
  }

  HttpService() {
    _dio = Dio(
      BaseOptions(baseUrl: 'https://reqres.in/'),
    );
  }

  void interceptors() {
    _dio.interceptors.add(InterceptorsWrapper());
  }
}
