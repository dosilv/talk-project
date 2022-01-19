import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';

class CenterModal extends StatelessWidget {
  final String message;
  final String confirmText;
  final VoidCallback onConfirm;
  final Widget? contents;
  final String? cancelText;

  const CenterModal(
      {Key? key,
      required this.message,
      required this.confirmText,
      required this.onConfirm,
      this.contents,
      this.cancelText})
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
              Row(
                children: cancelText == null
                    ? [
                        DefaultButton(
                            text: confirmText, disabled: false, onTap: () {})
                      ]
                    : [
                        DefaultButton(
                            text: cancelText!,
                            disabled: true,
                            onTap: () {
                              Get.back();
                            }),
                        const SizedBox(width: 10),
                        DefaultButton(
                            text: confirmText, disabled: false, onTap: () {}),
                      ],
              )
            ],
          )),
    );
  }
}
