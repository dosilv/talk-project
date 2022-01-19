// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/controller/widget/custom_date_picker_controller.dart';
import 'package:humilylab_talk/ui/widget/action_modal.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';
import 'package:humilylab_talk/ui/widget/circular_button.dart';
import 'package:humilylab_talk/ui/widget/custom_date_picker.dart';
import 'package:humilylab_talk/ui/widget/custom_timer.dart';
=======
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/custom_date_picker.dart';
import 'package:humilylab_talk/ui/widget/widget_demo.dart';
>>>>>>> d17ea3275732fc8f3aa7ef2a607fe1347fc2e66b

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

<<<<<<< HEAD
  void showDatePicker() async {
    final date = await Get.put(CustomDatePickerController()).showDatePicker();
    setState(() {
      birthDate = '${date[0]} / ${date[1]} / ${date[2]}';
    });
=======
  void showModal() {
    Get.dialog(const CustomDatePicker(), barrierDismissible: false);
>>>>>>> d17ea3275732fc8f3aa7ef2a607fe1347fc2e66b
  }

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
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomTimer(min: 10),
            CircularButton(
              activated: state1,
              defaultIcon: '🔇',
              activatedIcon: '🔊',
              onTap: () {
                switchState(state1);
              },
            ),
            CircularButton(
              defaultIcon: '📆',
              defaultColor: Colors.white,
              onTap: showDatePicker,
            ),
            CircularButton(
              defaultIcon: '✅',
              defaultColor: Colors.white,
              onTap: showActionSheet,
            ),
            Text(birthDate)
          ],
        ),
      ),
=======
      body: WidgetDemo(),
>>>>>>> d17ea3275732fc8f3aa7ef2a607fe1347fc2e66b
    );
  }
}
