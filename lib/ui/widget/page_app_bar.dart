import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humilylab_talk/theme/color.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;

  const PageAppBar({
    Key? key,
    required this.appBar,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        //TODO : 바탕이 흰 색이라 안보이지만 다크에선 보이니까..?
        highlightColor: Colors.white24,
        splashColor: Colors.transparent,
        icon: const Icon(CupertinoIcons.back, color: BLACK),
        onPressed: () {
          Get.back();
        },
      ),
      backgroundColor: WHITE,
      elevation: 0.3,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
