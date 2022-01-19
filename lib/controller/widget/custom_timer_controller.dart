import 'dart:async';
import 'package:get/state_manager.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';

class CustomTimerController extends GetxController {
  RxInt min;
  // final RxInt min = 30.obs;
  final RxInt sec = 0.obs;

  CustomTimerController(this.min);

  late Timer timer;

  Future<void> initCount() async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (sec.value != 0) {
        sec.value -= 1;
        return;
      }
      if (min.value != 0) {
        min.value -= 1;
        sec.value += 59;
        return;
      }
      terminate();
    });
  }

  void terminate() {
    timer.cancel();
    Get.dialog(CenterModal(
        message: '통화가 종료되었습니다.', confirmText: '확인', onConfirm: () {}));
  }
}
