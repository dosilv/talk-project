import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    required this.text,
    required this.activated,
    required this.onTap,
    required this.height,
    required List<double> this.padding,
  });

  final bool activated;
  final VoidCallback onTap;
  final String text;
  final double height;
  final List<double> padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: activated ? null : onTap,
      child: Container(
        height: height,
        padding:
            EdgeInsets.symmetric(vertical: padding[0], horizontal: padding[1]),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: activated ? LIGHT_GRAY : PRIMARY,
          ),
          borderRadius: BorderRadius.circular(11),
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
    );
  }
}
