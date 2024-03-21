import 'package:googleapis/workflowexecutions/v1.dart';

class ApiException extends Exception {
  String message;

  ApiException({required this.message});
}
