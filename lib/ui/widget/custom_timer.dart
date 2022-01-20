import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humilylab_talk/controller/widget/custom_timer_controller.dart';
import 'package:humilylab_talk/theme/color.dart';

class CustomTimer extends GetView<CustomTimerController> {
  final int min;
  const CustomTimer({Key? key, required this.min}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CustomTimerController(min: min.obs));
    controller.initCount();
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Obx(() => Text(
            '⏰ ${controller.min.value.toString().padLeft(2, '0')} : ${controller.sec.value.toString().padLeft(2, '0')}',
            style:
                Theme.of(context).textTheme.headline3?.copyWith(color: PRIMARY),
          )),
    );
  }
}
