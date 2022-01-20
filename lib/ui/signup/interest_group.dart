import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humilylab_talk/controller/widget/interest_group_controller.dart';
import 'package:humilylab_talk/theme/consts.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';

class InterestGroup extends GetView<InterestGroupController> {
  const InterestGroup({
    Key? key,
  }) : super(key: key);

  // TODO : 성별에 따라 정렬 다르게 주기

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InterestGroupController());

    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 20),
      itemCount: INTEREST_LIST.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3.2 / 1,
      ),
      itemBuilder: (BuildContext ctx, i) {
        return GetBuilder<InterestGroupController>(builder: (_) {
          return RoundButton(
            activated: controller.selectedInterestList
                .contains(INTEREST_LIST[i]['id']),
            onTap: () {
              controller.setSelected(INTEREST_LIST[i]['id']);
            },
            text: '${INTEREST_LIST[i]['icon']} ${INTEREST_LIST[i]['title']}',
          );
        });
      },
    );
  }
}
