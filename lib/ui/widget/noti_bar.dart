import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class NotiBar extends StatelessWidget {
  final String message;
  final int duration;
  final SnackPosition position;
  const NotiBar(
      {Key? key,
      required this.message,
      this.duration = 2,
      this.position = SnackPosition.TOP})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetSnackBar(
      message: message,
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      backgroundColor: Colors.black45,
      borderRadius: 10,
      snackPosition: position,
      duration: Duration(seconds: duration),
    );
  }
}
