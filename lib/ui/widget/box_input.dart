import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class BoxInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool Function(String)? validator;
  final bool readOnly;
  final int? maxLength;
  final int maxLines;
  final String errorText;
  const BoxInput(
      {Key? key,
      required this.labelText,
      required this.controller,
      this.validator,
      this.maxLength,
      this.maxLines = 5,
      this.errorText = "올바른 형식으로 입력해주세요",
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: LIGHT_GRAY),
        borderRadius: BorderRadius.circular(10));

    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        labelText: labelText,
        alignLabelWithHint: true,
        labelStyle:
            Theme.of(context).textTheme.bodyText2?.copyWith(color: DEEP_GRAY),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        enabledBorder: border,
        focusedBorder:
            border.copyWith(borderSide: const BorderSide(color: PRIMARY)),
        errorBorder:
            border.copyWith(borderSide: const BorderSide(color: ERROR)),
        focusedErrorBorder: border.copyWith(
            borderSide: const BorderSide(color: ERROR, width: 2)),
        disabledBorder:
            border.copyWith(borderSide: const BorderSide(color: DEEP_GRAY)),
      ),
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