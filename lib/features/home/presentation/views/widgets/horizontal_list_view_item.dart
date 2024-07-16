import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HorizontalListViewItem extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const HorizontalListViewItem({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: CachedNetworkImage(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .245,
            fit: BoxFit.fill,
            imageUrl: image,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.play_arrow),
            style: ButtonStyle(
              shape: const MaterialStatePropertyAll(
                CircleBorder(),
              ),
              backgroundColor: MaterialStatePropertyAll(
                Colors.white.withOpacity(0.1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
