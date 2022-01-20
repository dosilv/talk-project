import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:humilylab_talk/utils/show_noti_bar.dart';

class InterestGroupController extends GetxController {
  final List<int> selectedInterestList;

  InterestGroupController({Key? key, required this.selectedInterestList});

  void setSelected(int idx) {
    // 이미 선택한 아이템 외에 5개 이상 선택할 시, 알림 메시지
    if (selectedInterestList.length > 4 &&
        !selectedInterestList.contains(idx)) {
      showNotiBar(message: '최대 5개 이상 선택 가능합니다.');
      return;
    }
    // 추가 및 중복 제거
    selectedInterestList.contains(idx)
        ? selectedInterestList.remove(idx)
        : selectedInterestList.add(idx);
    update();
  }
}
