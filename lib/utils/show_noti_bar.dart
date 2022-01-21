import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void showNotiBar(
    {required message, duration = 2, position = SnackPosition.TOP}) {
  if (Get.isSnackbarOpen) {
    return;
  }
  Get.showSnackbar(GetSnackBar(
    message: message,
    margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
    backgroundColor: Colors.black45,
    borderRadius: 10,
    snackPosition: position,
    duration: Duration(seconds: duration),
  ));
}
