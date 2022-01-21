import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class CircularButton extends StatelessWidget {
  // svg icon으로 추후 수정
  final String defaultIcon;
  final void Function() onTap;
  final bool activated;
  final String? activatedIcon;
  final Color defaultColor;
  final Color activatedColor;

  const CircularButton({
    Key? key,
    required this.defaultIcon,
    required this.onTap,
    this.activated = false,
    this.activatedIcon,
    this.defaultColor = LIGHT_GRAY,
    this.activatedColor = PRIMARY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: activated ? activatedColor : defaultColor,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(color: SHADOW, offset: Offset(3, 3), blurRadius: 3)
                ]),
            child: Text(
              activated ? activatedIcon ?? defaultIcon : defaultIcon,
              style: TextStyle(fontSize: 24),
            )));
  }
}
