import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class InterestGroupController extends GetxController {
  List<int> selectedInterestList = [];

  InterestGroupController({Key? key});

  void showAlertMsg() {
    Get.showSnackbar(const GetSnackBar(
      message: '최대 5개까지 선택할 수 있습니다.',
      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
      backgroundColor: Colors.black45,
      borderRadius: 10,
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
    ));
  }

  void setSelected(int idx) {
    // 이미 선택한 아이템 외에 5개 이상 선택할 시, 알림 메시지
    if (selectedInterestList.length > 4 &&
        !selectedInterestList.contains(idx)) {
      showAlertMsg();
      return;
    }
    // 추가 및 중복 제거
    selectedInterestList.contains(idx)
        ? selectedInterestList.remove(idx)
        : selectedInterestList.add(idx);
    update();
  }
}
