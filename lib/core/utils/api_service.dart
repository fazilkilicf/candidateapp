import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  late String baseUrl;

  ApiService(this._dio, {required this.baseUrl});

  Future<Response> get(
      {required String endPoint, dynamic data, dynamic params}) async {
    var response = await _dio.get('$baseUrl$endPoint',
        data: data, queryParameters: params);
    return response;
  }

  Future<Response> post(
      {required String endPoint, dynamic data, dynamic params}) async {
    var response = await _dio.post('$baseUrl$endPoint',
        data: data, queryParameters: params);
    return response;
  }

  Future<Response> put({required String endPoint}) async {
    var response = await _dio.put('$baseUrl$endPoint');
    return response;
  }

  Future<Response> delete({required String endPoint}) async {
    var response = await _dio.delete('$baseUrl$endPoint');
    return response;
  }
}
