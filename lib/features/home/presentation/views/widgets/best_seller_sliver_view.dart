import 'package:flutter/material.dart';
import '../../../data/models/book_model.dart';
import '../../../data/models/book_rating.dart';
import '../../../data/models/list_price.dart';
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
          padding: const EdgeInsets.only(
            right: 50.0,
            left: 30.0,
          ),
          child: BookItem(
            book: BookModel(
              title: "Mohamed Gehad in the University",
              authors: ["Mohamed Gehad"],
              categories: ['categories'],
              thumbnail:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s",
              previewLink: 'previewLink',
              buyLink: 'buyLink',
              listPrice: ListPrice(amount: 15, currencyCode: 'EGP'),
              bookRating: BookRating(averageRating: 4.9, ratingsCount: 500),
            ),
          ),
        );
      },
    ));
  }
}
