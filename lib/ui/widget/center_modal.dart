import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class CenterModal extends StatelessWidget {
  final String message;
  final Widget? contents;
  final String confirmText;
  final VoidCallback onConfirm;
  final String? cancelText;
  final VoidCallback? onCancel;

  const CenterModal(
      {Key? key,
      required this.message,
      required this.confirmText,
      required this.onConfirm,
      this.contents,
      this.cancelText,
      this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child:
                    Text(message, style: Theme.of(context).textTheme.bodyText1),
              ),
              contents ?? Container(),
              cancelText == null
                  ? Expanded(
                      child: Container(
                          color: PRIMARY, height: 56, child: Text(confirmText)))
                  : Row(
                      children: [
                        Expanded(
                            child: Container(
                                color: LIGHT_GRAY,
                                height: 56,
                                child: Text(cancelText!))),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Container(
                                color: PRIMARY,
                                height: 56,
                                child: Text(confirmText)))
                      ],
                    )
            ],
          )),
    );
  }
}
