import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/routes/routes.dart';
import 'package:humilylab_talk/theme/color.dart';

class BottomNav extends StatelessWidget {
  final int curIdx;
  const BottomNav({Key? key, required this.curIdx}) : super(key: key);

  static centerButton(int curIdx) => FloatingActionButton(
        backgroundColor: Colors.white,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(2.5),
          decoration:
              const BoxDecoration(color: PRIMARY, shape: BoxShape.circle),
          child: Icon(
              curIdx == 1 ? CupertinoIcons.add : CupertinoIcons.chat_bubble_2),
        ),
        onPressed: () {
          Get.toNamed(Routes.GROUP_TALK_LIST);
        },
      );

//icon -> svg로 추후 수정
  Widget bottomNavButton(
          {required int idx,
          IconData? icon,
          required String label,
          required String onTapTo}) =>
      GestureDetector(
          onTap: () {
            Get.toNamed(onTapTo);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                color: curIdx == idx ? PRIMARY : DEEP_GRAY,
                size: 28,
              ),
              Text(
                label,
                style: TextStyle(
                    fontSize: 12, color: curIdx == idx ? PRIMARY : DEEP_GRAY),
              )
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomNavButton(
                  idx: 0,
                  icon: Icons.home_outlined,
                  label: '홈',
                  onTapTo: Routes.INITIAL),
              bottomNavButton(
                  idx: 1, label: '그룹대화', onTapTo: Routes.GROUP_TALK_LIST),
              bottomNavButton(
                  idx: 2,
                  icon: Icons.person_outline,
                  label: 'MY',
                  onTapTo: Routes.MYPAGE),
            ],
          ),
        ));
  }
}
