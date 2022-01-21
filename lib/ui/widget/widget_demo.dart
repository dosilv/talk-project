import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/theme/color.dart';
import 'package:humilylab_talk/ui/widget/interest_group.dart';
import 'package:humilylab_talk/ui/widget/bottom_modal.dart';
import 'package:humilylab_talk/ui/widget/main_app_bar.dart';
// import 'package:get/get.dart';

class WidgetDemo extends StatelessWidget {
  WidgetDemo({
    Key? key,
  }) : super(key: key);

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          appBar: AppBar(),
        ),
        body: Column(children: [InterestGroup()]));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottheet'),
        onPressed: () {
          showModal(context);
        },
      ),
    );
  }
}

void showModal(context) {
  Get.bottomSheet(
    BottomModal(
      title: '관심사 선택하기',
      btnText: '확인',
      contents: Expanded(
        child: Column(children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            '최대 5개까지 선택할 수 있습니다.',
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: DEEP_GRAY,
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: InterestGroup(),
          ),
        ]),
      ),
    ),
    isScrollControlled: true,
  );
}