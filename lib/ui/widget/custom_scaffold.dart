import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';
import 'package:humilylab_talk/ui/widget/bottom_nav.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final int? bottomNavIdx;
  final Color bgColor;
  final double horizontalPadding;
  final double topPadding;
  CustomScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.bottomNavIdx,
    this.bgColor = MAIN_BG,
    this.horizontalPadding = 24,
    this.topPadding = 16,
  }) : super(key: key);

  var currentFocus;

  @override
  Widget build(BuildContext context) {
    void unfocus() {
      currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }

    return GestureDetector(
      onTap: unfocus,
      child: Scaffold(
        backgroundColor: bgColor,
        floatingActionButton:
            bottomNavIdx != null ? BottomNav.centerButton(bottomNavIdx!) : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: appBar,
        bottomNavigationBar:
            bottomNavIdx != null ? BottomNav(curIdx: bottomNavIdx!) : null,
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height -
                        (appBar == null
                            ? 0
                            : (appBar!.preferredSize.height +
                                MediaQuery.of(context).padding.top)) -
                        (bottomNavIdx != null ? 90 : 0)),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        horizontalPadding, topPadding, horizontalPadding, 0),
                    child: SafeArea(bottom: false, child: body)))),
      ),
    );
  }
}
