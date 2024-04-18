import 'package:dio/dio.dart';

/// Extension methods on [Response<dynamic>] for utility functions.
extension ResponseExtensions on Response<dynamic> {
  /// Checks if the response status code indicates success.
  bool isSuccessStatusCode() {
    if (this.statusCode == null) {
      return false;
    }

    return this.statusCode! >= 200 && this.statusCode! < 400;
  }
}
