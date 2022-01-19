import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class DefaultInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool readOnly;
  final bool digitsOnly;
  final bool autofocus;
  final int maxLines;
  final int maxLength;
  final bool obscureText;
  final bool isRounded;
  const DefaultInput(
      {Key? key,
      required this.labelText,
      required this.controller,
      required this.digitsOnly,
      this.isRounded = true,
      this.obscureText = false,
      this.maxLines = 1,
      this.maxLength = 15,
      this.autofocus = true,
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorBorder = OutlineInputBorder(
        borderSide: BorderSide(color: ERROR),
        borderRadius: BorderRadius.circular(isRounded ? 100 : 10));

    return TextFormField(
      controller: controller,
      keyboardType: digitsOnly ? TextInputType.number : TextInputType.text,
      autofocus: autofocus,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      // errorBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: ERROR),
      //     borderRadius: BorderRadius.circular(isRounded ? 100 : 10)),
    );
  }
}

    // this.focusNode,
 
    // TextInputType? keyboardType,
    // this.textInputAction,
    // this.style,
    // this.strutStyle,
    // this.textAlign = TextAlign.start,
    // this.textAlignVertical,
    // this.textDirection,

    // ToolbarOptions? toolbarOptions,
    // this.showCursor,

  
    // SmartDashesType? smartDashesType,
    // SmartQuotesType? smartQuotesType,
    // this.enableSuggestions = true,

    // this.minLines,
    // this.expands = false,
    // this.maxLength,