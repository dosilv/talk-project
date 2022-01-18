// Flutter imports:
import 'package:flutter/material.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(children: [
            RoundButton(
              text: '동그란버튼',
              activated: false,
              height: 40,
              onTap: () {
                print('clicked');
              },
            ),
            RoundButton(
              text: '동그란버튼',
              activated: true,
              height: 40,
              onTap: () {
                print('clicked');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
