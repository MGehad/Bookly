import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.thumbnail,
    required this.height,
    required this.width,
    required this.borderRadius,
  });

  final String thumbnail;
  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: CachedNetworkImage(
        imageUrl: thumbnail,
        height: height,
        width: width,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
