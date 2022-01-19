import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class DefaultButton extends StatelessWidget {
  final bool activated;
  final VoidCallback onTap;
  final String text;
  final double verticalPadding;

  const DefaultButton({
    Key? key,
    required this.activated,
    required this.onTap,
    required this.text,
    this.verticalPadding = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: activated ? PRIMARY : LIGHT_GRAY,
      child: InkWell(
        highlightColor: Colors.white24,
        splashColor: Colors.transparent,
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(verticalPadding),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: activated ? WHITE : DEEP_GRAY),
          ),
        ),
      ),
    );
  }
}
