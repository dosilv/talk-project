import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const MainAppBar({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text('앱 로고', style: Theme.of(context).textTheme.headline3),
      //TODO : 투명이 안되고 불투명 회색이 나온다..!
      backgroundColor: WHITE,
      elevation: 0.0,
      actions: [
        IconButton(
          highlightColor: Colors.white24,
          splashColor: Colors.transparent,
          icon: const Icon(Icons.notifications, color: BLACK),
          onPressed: () {},
        ),
        IconButton(
          highlightColor: Colors.white24,
          splashColor: Colors.transparent,
          icon: const Icon(Icons.menu, color: BLACK),
          onPressed: () {},
        ),
      ],
    );
  }
}
