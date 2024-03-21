import 'dart:convert';

import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/exceptions/api_exception.dart';
import 'package:adopt_a_pet/extensions/response_extensions.dart';
import 'package:dio/dio.dart';

import 'http_method.dart';


class DioRequestService implements RequestService {
  @override
  Future<dynamic> sendAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson = null,
  }) async {
    final dio = Dio();
    final options = Options(headers: headers);

    Response<dynamic> response;

    switch (method) {
      case HttpMethod.Get:
        response = await dio.get(
          url,
          options: options,
          queryParameters: queryParameters,
        );
        break;
      case HttpMethod.Post:
        response = await dio.post(
          url,
          data: dataJson,
          options: options,
          queryParameters: queryParameters,
        );
        break;
      case HttpMethod.Put:
        response = await dio.put(
          url,
          data: dataJson,
          options: options,
          queryParameters: queryParameters,
        );
        break;
      case HttpMethod.Delete:
        response = await dio.delete(
          url,
          data: dataJson,
          options: options,
          queryParameters: queryParameters,
        );
        break;
    }

    if (response.isSuccessStatusCode()) {
      try {
        return jsonDecode(response.data);
      } catch (e) {
        return response.data;
      }
    }

    throw ApiException(
        message:
            'Error processing request. \nURL: $url\nStatus code: ${response.statusCode}');
  }
}
