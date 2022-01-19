import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';
import 'package:humilylab_talk/ui/widget/custom_bottom_nav.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final int? bottomNavIdx;
  final ScrollController? scrollCtrl;
  const CustomScaffold(
      {Key? key,
      required this.body,
      this.appBar,
      this.bottomNavIdx,
      this.scrollCtrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: bottomNavIdx != null
          ? CustomBottomNav.centerButton(bottomNavIdx!)
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: appBar,
      bottomNavigationBar:
          bottomNavIdx != null ? CustomBottomNav(curIdx: bottomNavIdx!) : null,
      body: SingleChildScrollView(
          controller: scrollCtrl,
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      (appBar?.preferredSize.height ?? 0) -
                      60),
              child: body)),
    );
  }
}
