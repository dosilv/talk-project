import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class Thermometer extends StatelessWidget {
  final double thickness;
  final double length;
  final double score;
  final bool hasShadow;
  final bool isVertical;

  const Thermometer(
      {Key? key,
      required this.thickness,
      required this.length,
      required this.score,
      this.hasShadow = false,
      this.isVertical = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: isVertical ? 1 : 0,
      child: Stack(children: [
        Container(
          width: thickness,
          height: length,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: LIGHT_GRAY,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: thickness,
            height: length * score * 0.011,
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
