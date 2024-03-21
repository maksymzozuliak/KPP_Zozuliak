import 'package:dio/dio.dart';

extension ResponseExtensions on Response<dynamic> {
  bool isSuccessStatusCode() {
    if (this.statusCode == null) {
      return false;
    }

    return this.statusCode! >= 200 && this.statusCode! < 400;
  }
}
