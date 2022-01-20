import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class CustomCheckbox extends StatelessWidget {
  final bool checked;
  final String text;
  final VoidCallback onTap;
  const CustomCheckbox(
      {Key? key,
      required this.checked,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Checkbox(
              value: checked,
              shape: const CircleBorder(),
              fillColor: MaterialStateProperty.all(PRIMARY),
              side: const BorderSide(color: DEEP_GRAY),
              onChanged: (_) {
                onTap();
              }),
          Text(text)
        ],
      ),
    );
  }
}
