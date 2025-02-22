import 'package:ella_lite/widget/cache_image.dart';
import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class DietCard extends StatefulWidget {
  DietCard({
    required this.data,
    this.image = true,
    this.isSelected = false,
    this.clickable = false,
    super.key,
  });

  final Map<String,dynamic> data;
  final bool image;
  bool isSelected;
  bool clickable;

  @override
  State<DietCard> createState() => _DietCardState();
}

class _DietCardState extends State<DietCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.clickable) {
          widget.isSelected = !widget.isSelected;
          setState(() {});
        }
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: widget.isSelected
                      ? AppTheme.appColor
                      : AppTheme.deactivatedText,
                  width: 2)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.image
                      ? Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CustomNetworkImage(
                            url:widget.data["image"] ?? '',
                            height: 32,
                            width: 32,
                          ),
                      )
                      : const SizedBox(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Text(
                      " ${widget.data["name"]}  ",
                      style: AppTheme.smallText
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
