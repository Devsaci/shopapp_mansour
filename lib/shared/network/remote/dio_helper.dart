import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static  late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        //https://www.getpostman.com/collections/3223d639447a8524e38f
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String? url,
    required Map<String, dynamic>? query,
  }) async {
    return await dio.get(
      url!,
      queryParameters: query,
    );
  }
}
