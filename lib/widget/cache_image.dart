import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../core/app_theme.dart';


class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key,required this.url, this.height, this.width});
  final String url;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: url.isEmpty ? 1 : 1,
      child: CachedNetworkImage(
        imageUrl: (url.isNotEmpty) ? url : "",//"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVYS7KEXYFAwqdRCW81e4DSR_nSLYSFStx1Q&s",
        height: height ?? MediaQuery.of(context).size.width,
        width: width ?? MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        placeholder: (context, url) => Skeleton(
      height: height ?? MediaQuery.of(context).size.width,
      width: width ?? MediaQuery.of(context).size.width,
      colors: Colors.white,
        ),
        errorWidget: (context, url, error) => Skeleton(
      height: height ?? MediaQuery.of(context).size.width,
      width: width ?? MediaQuery.of(context).size.width,
      colors: Colors.white,
        ),
      ),
    );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({
    this.height,
    this.width,
    this.colors,
    super.key,
  });

  final double? height;
  final Color? colors;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.04),borderRadius: BorderRadius.circular(10)),
      child: Icon(
        Icons.image,
        color: colors != null ? Colors.white : AppTheme.lightBackgroundColor,
        size: height != null ? (height! - 20) : 60,
      ),
    );
  }
}
