import 'http_method.dart';

/// An abstract class representing a service for making HTTP requests.
abstract class RequestService {

  /// Sends an asynchronous HTTP request.
  ///
  /// [method]: HTTP method for the request (GET, POST, PUT, DELETE).
  /// [url]: URL for the request.
  /// [headers]: Optional headers for the request.
  /// [queryParameters]: Optional query parameters for the request.
  /// [dataJson]: Optional JSON data for POST, PUT, DELETE requests.
  ///
  /// Returns a [Future]<dynamic> representing the result of the request.
  Future<dynamic> sendAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson = null,
  });
}
