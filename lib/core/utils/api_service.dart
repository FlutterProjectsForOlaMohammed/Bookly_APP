import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  Future<Map<String, dynamic>> getRequest({required String url}) async {
    var response = await dio.get("$_baseUrl$url");
    return response.data;
  }
}
