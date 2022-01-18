// Flutter imports:
import 'package:flutter/material.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';
import 'package:humilylab_talk/ui/widget/small_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(children: [
            SmallButton(
              text: '나는 작은 버튼',
              activated: false,
              height: 40,
              padding: [6, 13],
              onTap: () {
                print('clicked');
              },
            ),
            RoundButton(
              text: '동그란 버튼',
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
