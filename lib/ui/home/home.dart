// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/controller/widget/custom_date_picker_controller.dart';
import 'package:humilylab_talk/ui/widget/action_modal.dart';
import 'package:humilylab_talk/ui/widget/bottom_modal.dart';
import 'package:humilylab_talk/ui/widget/box_input.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';
import 'package:humilylab_talk/ui/widget/circular_button.dart';
import 'package:humilylab_talk/ui/widget/custom_checkbox.dart';
import 'package:humilylab_talk/ui/widget/custom_scaffold.dart';
import 'package:humilylab_talk/ui/widget/defalut_input.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/main_app_bar.dart';
import 'package:humilylab_talk/ui/widget/page_app_bar.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';
import 'package:humilylab_talk/ui/widget/thermometer.dart';
import 'package:humilylab_talk/ui/widget/widget_demo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool state1 = true;
  bool state2 = false;

  void switchState(bool state) {
    setState(() {
      state1 = !state1;
    });
  }

  void showDatePicker() async {
    final date = await Get.put(CustomDatePickerController()).showDatePicker();
    setState(() {
      birthDate = '${date[0]} / ${date[1]} / ${date[2]}';
    });
  }

  bool checked = false;

  void showActionSheet() {
    Get.bottomSheet(ActionModal(actionLabels: [
      '차단하기',
      '신고하기'
    ], actions: [
      () {
        print('차단하기');
      },
      () {
        print('신고하기');
      },
    ]));
  }

  String birthDate = 'yyyy / mm / dd';

  @override
  Widget build(BuildContext context) {
    return WidgetDemo();
  }
}
