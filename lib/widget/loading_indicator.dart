import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';



class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    this.color,
    this.size = 40,

    super.key,
  });

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.horizontalRotatingDots(
        color: color!,
        size: size,
      ),
    );
  }
}