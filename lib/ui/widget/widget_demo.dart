import 'package:flutter/material.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultButton(
              text: 'dkssud',
              activated: true,
              onTap: () {
                print('ddd');
              }),
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                    text: 'dkssud',
                    activated: true,
                    onTap: () {
                      print('ddd');
                    }),
              ),
              Expanded(
                child: DefaultButton(
                    text: 'dkssud',
                    activated: false,
                    onTap: () {
                      print('ddd');
                    }),
              ),
            ],
          ),
          RoundButton(activated: true, onTap: () {}, text: '안녕'),
          RoundButton(activated: false, onTap: () {}, text: '안녕'),
          Row(
            children: [
              RoundButton(activated: true, onTap: () {}, text: '안녕'),
              RoundButton(activated: false, onTap: () {}, text: '안녕')
            ],
          )
        ],
      ),
    );
  }
}
