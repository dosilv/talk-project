import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDatePicker extends GetView {
  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime(1980),
      onDateTimeChanged: (dateTime) {},

      // firstDate: DateTime(1950),
      // lastDate: DateTime(1990),
    );
  }
}
