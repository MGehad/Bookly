import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/image_widget.dart';

class HorizontalListViewItem extends StatelessWidget {
  final String image;
  final String previewLink;
  final VoidCallback onTap;

  const HorizontalListViewItem({
    super.key,
    required this.image,
    required this.onTap,
    required this.previewLink,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ImageWidget(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .245,
            thumbnail: image,
            borderRadius: 15.0,
          ),
          Positioned(
            bottom: 8.0,
            right: 8.0,
            child: IconButton(
              onPressed: () {},
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
      ),
    );
  }
}
