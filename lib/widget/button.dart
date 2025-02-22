import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import 'loading_indicator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.text,
    this.color,
    this.textColor,
    this.child,
    required this.onTap,
    this.isLoading = false,
    super.key,
  });

  final String? text;
  final Color? color;
  final Color? textColor;
  final Widget? child;
  final Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicWidth( // This ensures the width is as long as its content
        child: Container(
          decoration: BoxDecoration(
            color: color ?? AppTheme.appColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
              child: child ??
                  SizedBox(
                    child: isLoading
                        ? const CustomLoadingIndicator(
                            color: Colors.white,
                            size: 22,
                          )
                        : Text(
                            text ?? "",
                            style: AppTheme.subheading2
                                .copyWith(color: textColor ?? Colors.white,),
                          ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
