import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class DefalutButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final VoidCallback onClick;

  const DefalutButton(
      {required this.text, required this.disabled, required this.onClick});

// TODO  :  물결 애니메이션 제거하기
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: disabled ? LIGHT_GRAY : PRIMARY,
        ),
        child: MaterialButton(
          onPressed: disabled ? null : onClick,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: disabled ? DEEP_GRAY : WHITE,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
