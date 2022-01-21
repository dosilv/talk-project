import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class ActionModal extends StatelessWidget {
  final List<String> actionLabels;
  final List<VoidCallback> actions;
  const ActionModal(
      {Key? key, required this.actionLabels, required this.actions})
      : super(key: key);

  Widget actionTile(String label, VoidCallback action) => GestureDetector(
      onTap: action,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.transparent,
          alignment: Alignment.center,
          child:
              Text(label, style: const TextStyle(fontSize: 18, color: BLACK))));

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: List.generate(actions.length,
          (index) => actionTile(actionLabels[index], actions[index])),
    );
  }
}
