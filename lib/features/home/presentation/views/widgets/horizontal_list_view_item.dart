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
        Container(
          width: MediaQuery.of(context).size.width * .35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey,
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
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
