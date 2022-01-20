import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:humilylab_talk/controller/widget/custom_date_picker_controller.dart';

class CustomDatePicker extends GetView<CustomDatePickerController> {
  final List<int> initialDateTime;
  const CustomDatePicker({Key? key, required this.initialDateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      )),
      onClosing: () {},
      builder: (ctx) => CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime(
            initialDateTime[0], initialDateTime[1], initialDateTime[2]),
        onDateTimeChanged: (dateTime) {
          controller.setDate(dateTime);
        },
        minimumYear: 1950,
        maximumYear: 1990,
      ),
    );
  }
}
