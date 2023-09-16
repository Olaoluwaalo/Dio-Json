import 'package:dio/dio.dart';
import 'package:dio_json/users.dart';

class HttpService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://reqres.in/"));

  Future<UserData> fetchUserData() async {
    final response = await _dio.get('https://reqres.in/api/users/2');
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = response.data;
      return UserData.fromJson(responseData['data']);
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
