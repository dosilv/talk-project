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
    return CustomScaffold(
      // appBar: MainAppBar(
      //   appBar: AppBar(),
      //   // title: "TITLE",
      // ),
      bottomNavIdx: 0,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                DefaultInput(
                    labelText: 'labelText',
                    controller: TextEditingController(),
                    validator: (text) {
                      return text.length < 5;
                    },
                    digitsOnly: false),
                BoxInput(
                  labelText: 'labelText',
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          CircularButton(
            activated: state1,
            defaultIcon: '🔇',
            activatedIcon: '🔊',
            onTap: () {
              switchState(state1);
              Get.dialog(CenterModal(
                message: 'message',
                confirmText: '확인',
                onConfirm: () {},
                // cancelText: '취소',
              ));
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
          Text(birthDate),
          DefaultButton(
              activated: true,
              onTap: () {
                Get.bottomSheet(BottomModal(
                    title: 'title',
                    btnText: 'btnText',
                    btnCallback: () {
                      print("HELLO!");
                    },
                    contents: Text("data")));
              },
              text: 'text'),
          RoundButton(activated: false, onTap: () {}, text: 'text'),
          CustomCheckbox(
            checked: checked,
            text: '가나다라 마바사',
            onTap: () {
              setState(() {
                checked = !checked;
              });
            },
          ),
          Thermometer(thickness: 20, length: 100, score: 36.5, hasShadow: true)
        ],
      ),
    );
  }
}
