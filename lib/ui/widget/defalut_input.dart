import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

class DefaultInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool Function(String)? validator;
  final bool readOnly;
  final bool digitsOnly;
  final int maxLength;
  final bool showCounter;
  final String errorText;
  final bool obscureText;
  const DefaultInput(
      {Key? key,
      required this.labelText,
      required this.controller,
      required this.digitsOnly,
      this.validator,
      this.obscureText = false,
      this.maxLength = 15,
      this.showCounter = false,
      this.errorText = "올바른 형식으로 입력해주세요",
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide(color: LIGHT_GRAY),
        borderRadius: BorderRadius.circular(100));

    return TextFormField(
      controller: controller,
      keyboardType: digitsOnly ? TextInputType.number : TextInputType.text,
      autofocus: true,
      maxLength: maxLength,
      obscureText: obscureText,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle:
            Theme.of(context).textTheme.bodyText2?.copyWith(color: DEEP_GRAY),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        counterText: showCounter ? null : '',
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
      validator: validator == null
          ? null
          : (text) {
              if (text != null) {
                if (validator!(text)) {
                  return null;
                }
              }
              return errorText;
            },
      autovalidateMode: AutovalidateMode.always,
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