// Flutter imports:
import 'package:flutter/material.dart';
import 'package:humilylab_talk/ui/widget/thermometer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Thermometer(
            tempWidth: 20,
            tempHeight: 100,
            tempScore: 36.5,
            hasShadow: true,
          ),
        ),
      ),
    );
  }
}
