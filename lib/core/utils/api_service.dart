import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final _dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get("$_baseUrl$endPoint");
    var data = response.data;
    return data;
  }
}
