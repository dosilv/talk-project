import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    required this.text,
    required this.activated,
    required this.onTap,
    required this.height,
  });

  final bool activated;
  final VoidCallback onTap;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: activated ? null : onTap,
        child: Container(
          height: height,
          // TODO : 패딩이 필요할까..?
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: activated ? LIGHT_GRAY : PRIMARY,
            ),
            borderRadius: BorderRadius.circular(100),
            color: activated ? null : PRIMARY,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: activated ? DEEP_GRAY : WHITE,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
