// Flutter imports:
import 'package:flutter/material.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: DefalutButton(
            text: 'text',
            disabled: false,
            onClick: () {
              print('clicked');
            },
          ),
        ),
      ),
    );
  }
}
