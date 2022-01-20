import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class RoundButton extends StatelessWidget {
  final bool activated;
  final VoidCallback onTap;
  final String text;
  final double verticalPadding;

  const RoundButton({
    Key? key,
    required this.activated,
    required this.onTap,
    required this.text,
    this.verticalPadding = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: activated ? PRIMARY : WHITE,
      child: InkWell(
        highlightColor: Colors.white24,
        splashColor: Colors.transparent,
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(verticalPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1,
              color: activated ? PRIMARY : LIGHT_GRAY,
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: activated ? WHITE : DEEP_GRAY,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
