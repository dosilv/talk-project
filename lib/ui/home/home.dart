// Flutter imports:
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';
import 'package:humilylab_talk/ui/widget/circular_button.dart';
import 'package:humilylab_talk/ui/widget/custom_date_picker.dart';
import 'package:humilylab_talk/ui/widget/custom_timer.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';
=======
import 'package:humilylab_talk/ui/widget/thermometer.dart';
>>>>>>> add77be368791cbf81616d0f34503b5201292ea9

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
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
    Get.dialog(CustomDatePicker(), barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
<<<<<<< HEAD
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              activated: state1,
              defaultIcon: '🔇',
              activatedIcon: '🔊',
              onTap: () {
                switchState(state1);
              },
            ),
            CircularButton(
              defaultIcon: '👍',
              defaultColor: Colors.white,
              onTap: showModal,
            )
          ],
=======
        child: Container(
          child: Thermometer(
            tempWidth: 20,
            tempHeight: 100,
            tempScore: 36.5,
            hasShadow: true,
          ),
>>>>>>> add77be368791cbf81616d0f34503b5201292ea9
        ),
      ),
    );
  }
}
