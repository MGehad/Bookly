import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final _dio = Dio();

  Future<Map<String, dynamic>> get({required String bookName}) async {
    Response response = await _dio.get(
        "${_baseUrl}volumes?Filtering=free-ebooks&Sorting=newest &q=$bookName");
    var data = response.data;
    return data;
  }
}
