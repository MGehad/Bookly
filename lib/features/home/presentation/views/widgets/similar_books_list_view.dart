import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  final String thumbnail;

  const SimilarBooksListView({
    super.key,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 12),
            width: MediaQuery.of(context).size.width * .18,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              image: DecorationImage(
                image: NetworkImage(thumbnail),
              ),
            ),
          );
        },
      ),
    );
  }
}
