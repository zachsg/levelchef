import 'package:flutter/material.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void showErrorSnackBar({required String message}) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    showSnackBar(message: message);
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
