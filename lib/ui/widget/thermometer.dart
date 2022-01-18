import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class Thermometer extends StatelessWidget {
  const Thermometer(
      {Key? key,
      required this.tempWidth,
      required this.tempHeight,
      required this.tempScore,
      required this.hasShadow})
      : super(key: key);
  final double tempWidth;
  final double tempHeight;
  final double tempScore;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Stack(children: [
        Container(
          width: tempWidth,
          height: tempHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: LIGHT_GRAY,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: tempWidth,
            height: tempHeight * tempScore * 0.011,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [YELLOW, PRIMARY],
                ),
                borderRadius: BorderRadius.circular(100),
                color: PRIMARY,
                boxShadow: hasShadow
                    ? [
                        const BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, -3),
                          color: PRIMARY,
                        ),
                        const BoxShadow(
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          color: PRIMARY,
                        ),
                      ]
                    : null),
          ),
        ),
      ]),
    );
  }
}
