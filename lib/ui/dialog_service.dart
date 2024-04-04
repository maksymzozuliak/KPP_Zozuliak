import 'package:flutter/material.dart';

class DialogService {
  static showAlertDialog({
    required BuildContext context,
    required Widget dialog,
    insetPadding = 0.0,
    contentPadding = 0.0,
    borderRadius = 0.0,
    alignment = Alignment.center,
  }) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(insetPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          contentPadding: EdgeInsets.all(contentPadding),
          alignment: alignment,
          content: dialog,
        );
      },
    );
  }
}