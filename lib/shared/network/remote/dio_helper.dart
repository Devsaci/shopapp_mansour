import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        //https://www.getpostman.com/collections/3223d639447a8524e38f
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
        // headers: {
        //   'Content-Type': 'application/json',
        // },
      ),
    );
  }

  static Future<Response> getData({
    required String? url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token??'',
    };
    return await dio.get(
      url!,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String? url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token??'',
    };
    return dio.post(
      url!,
      queryParameters: query,
      data: data,
    );
  }
}
