import 'package:flutter/material.dart';
import 'book_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 50.0, left: 30.0,),
          child: BookItem(),
        );
      },
    ));
  }
}
