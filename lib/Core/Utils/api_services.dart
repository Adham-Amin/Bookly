import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);

  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await _dio.get('$baseUrl$endPoints');
    return response.data;
  }
}
