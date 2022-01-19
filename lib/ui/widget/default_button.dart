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
    return Row(
      children: [
        Expanded(
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: activated ? LIGHT_GRAY : PRIMARY,
            child: InkWell(
              highlightColor: Colors.white24,
              splashColor: Colors.transparent,
              onTap: onTap,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(verticalPadding),
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: activated ? DEEP_GRAY : WHITE),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
