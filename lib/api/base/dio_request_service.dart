import 'dart:convert';
import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/exceptions/api_exception.dart';
import 'package:adopt_a_pet/extensions/response_extensions.dart';
import 'package:dio/dio.dart';
import 'http_method.dart';


/// A service for sending asynchronous HTTP request. Class implementing the [RequestService] interface using Dio library
class DioRequestService implements RequestService {

  /// Sends an asynchronous HTTP request.
  ///
  /// [method]: HTTP method for the request (GET, POST, PUT, DELETE).
  /// [url]: URL for the request.
  /// [headers]: Optional headers for the request.
  /// [queryParameters]: Optional query parameters for the request.
  /// [dataJson]: Optional JSON data for POST, PUT, DELETE requests.
  ///
  /// Returns a [Future]<dynamic> representing the result of the request.
  @override
  Future<dynamic> sendAsync({

    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson = null,
  }) async {

    /// [Dio] client initialization
    final dio = Dio();

    /// [Options] for the request initialization
    final options = Options(headers: headers);

    Response<dynamic> response;

    /// Performing request based on the [method]
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

    /// Returns [response] data if [response] is successful
    if (response.isSuccessStatusCode()) {
      try {

        /// Decodes [response] data
        return jsonDecode(response.data);
      } catch (e) {
        return response.data;
      }
    }

    /// Throws an [ApiException] if the [response] indicates failure
    throw ApiException(
        message:
        'Error processing request. \nURL: $url\nStatus code: ${response.statusCode}');
  }
}
