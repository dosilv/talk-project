import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/interest_box.dart';
import 'package:humilylab_talk/ui/widget/main_app_bar.dart';
import 'package:humilylab_talk/ui/widget/page_app_bar.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';
import 'package:humilylab_talk/ui/widget/thermometer.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      // appBar: PageAppBar(
      //   appBar: AppBar(),
      //   title: "대화방 만들기",
      // ),
      body: Center(
        child: InterestBoxList(
          interestList: [3, 13, 12, 11, 1],
        ),
      ),
    );
  }
}
