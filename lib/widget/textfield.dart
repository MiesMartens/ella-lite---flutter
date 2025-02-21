import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import '../core/app_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.hintText,
      this.icon,
      this.keyboardType = TextInputType.text,
      this.suffix,
      this.maxLines = 1,
      this.minLines = 1,
      this.maxLength,
      required this.validator,
      this.isObscure = false,
      List<TextInputFormatter>? inputFormatters});
  final String? hintText;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool isObscure;
  final IconData? icon;
  final int maxLines, minLines;

  final int? maxLength;
  final TextInputType keyboardType;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: AppTheme.heading3,
        obscureText: isObscure,
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        validator: validator,
        maxLength: maxLength,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(0.2),
            errorStyle: AppTheme.smallText
                .copyWith(fontSize: 10, color: AppTheme.appColor),
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            suffix: suffix,
            prefixIcon: icon == null
                ? null
                : Icon(
                    icon,
                    size: 24,
                    color: AppTheme.darkText,
                  ),
            hintText: hintText ?? '',
            hintStyle: AppTheme.heading3.copyWith(color: AppTheme.lightText),
            counterStyle: AppTheme.smallText,
            labelStyle: AppTheme.smallText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: AppTheme.deactivatedText, // Border color
                width: 2.0, // Border width
              ),
            )));
  }
}
