// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/custom_date_picker.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/small_button.dart';

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

  void showModal() {
    Get.dialog(const CustomDatePicker(), barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultButton(
                text: 'dkssud',
                activated: true,
                onTap: () {
                  print('ddd');
                }),
          ],
        ),
      ),
    );
  }
}
