import 'package:googleapis/workflowexecutions/v1.dart';

/// An exception class representing an API error.
class ApiException extends Exception {
  /// The error message associated with the exception.
  String message;

  /// Constructs an [ApiException] instance.
  ///
  /// [message]: The error message associated with the exception.
  ApiException({required this.message});
}
