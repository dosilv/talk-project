// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/controller/widget/custom_date_picker_controller.dart';
import 'package:humilylab_talk/ui/widget/action_modal.dart';
import 'package:humilylab_talk/ui/widget/bottom_modal.dart';
import 'package:humilylab_talk/ui/widget/box_input.dart';
import 'package:humilylab_talk/ui/widget/center_modal.dart';
import 'package:humilylab_talk/ui/widget/circular_button.dart';
import 'package:humilylab_talk/ui/widget/custom_checkbox.dart';
import 'package:humilylab_talk/ui/widget/custom_scaffold.dart';
import 'package:humilylab_talk/ui/widget/defalut_input.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/main_app_bar.dart';
import 'package:humilylab_talk/ui/widget/page_app_bar.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';
import 'package:humilylab_talk/ui/widget/thermometer.dart';
import 'package:humilylab_talk/ui/widget/widget_demo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: MainAppBar(appBar: AppBar()),
        bottomNavIdx: 1,
        bgColor: Colors.yellow,
        body: Container(
          width: double.maxFinite,
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hi',
                style: TextStyle(fontSize: 82),
              ),
              Text(
                'hello',
                style: TextStyle(fontSize: 82),
              ),
              Text(
                'hi',
                style: TextStyle(fontSize: 82),
              ),
              Text(
                'hello',
                style: TextStyle(fontSize: 82),
              ),
            ],
          ),
        ));
  }
}
