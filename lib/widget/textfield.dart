import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import '../core/app_theme.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.nameController,
      required this.hintText,
      required this.icon,
      this.keyboardType = TextInputType.text,
      this.suffix,
      this.maxLines = 1,
      this.minLines = 1,
      this.maxLength,
      required this.validator,
      this.isObscure = false,
      List<TextInputFormatter>? inputFormatters});
  final String hintText;
  final TextEditingController nameController;
  final FormFieldValidator<String> validator;
  final bool isObscure;
  final IconData icon;
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
      controller: nameController,
      minLines: minLines,
      maxLines: maxLines,
      validator: validator,
      maxLength: maxLength,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          // fillColor: AppTheme.deactivatedText,
          // filled: true,
          errorStyle: AppTheme.smallText
              .copyWith(fontSize: 10, color: AppTheme.appColor),
          contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 18),
          suffix: suffix,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              size: 24,
              color: AppTheme.darkText,
            ),
          ),
          hintText: hintText,
          hintStyle: AppTheme.heading3.copyWith(color: AppTheme.lightText),
          counterStyle: AppTheme.smallText,
          labelStyle: AppTheme.smallText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppTheme.deactivatedText,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppTheme.appColor,
                width: 2,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppTheme.appColor,
              ))),
    );
  }
}
