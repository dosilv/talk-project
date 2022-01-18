import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';
import 'package:humilylab_talk/ui/widget/circular_button.dart';

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
    Get.dialog(
        CenterModal(
          message: '센터 모달 테스트 센터 모달 테스트 중',
          confirmText: '차단하기',
          cancelText: '취소',
          onConfirm: () {},
        ),
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
        ),
      ),
    );
  }
}
