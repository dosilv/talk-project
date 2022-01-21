import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humilylab_talk/theme/color.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';

class BottomModal extends StatelessWidget {
  final String title;
  final Widget contents;
  final String btnText;
  final VoidCallback? btnCallback;

  const BottomModal(
      {Key? key,
      required this.title,
      required this.contents,
      required this.btnText,
      this.btnCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: WHITE,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      padding: const EdgeInsets.only(top: 36),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            contents,
            DefaultButton(
              activated: true,
              borderRadius: 0,
              botttomPadding: 24,
              onTap: () {
                if (btnCallback != null) {
                  btnCallback!();
                }
                Get.back();
              },
              text: btnText,
            ),
          ],
        ),
      ),
    );
  }
}