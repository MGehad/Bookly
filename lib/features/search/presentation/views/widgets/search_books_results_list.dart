import 'package:flutter/material.dart';
import '../../../../home/data/models/book_model.dart';
import '../../../../home/data/models/book_rating.dart';
import '../../../../home/data/models/list_price.dart';
import '../../../../home/presentation/views/widgets/book_item.dart';

class SearchBooksResultsList extends StatelessWidget {
  const SearchBooksResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return BookItem(
          book: BookModel(
            title: "Mohamed Gehad in the University",
            authors: ["Mohamed Gehad"],
            categories: ['categories'],
            thumbnail:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s",
            previewLink: 'previewLink',
            buyLink: 'buyLink',
            listPrice: ListPrice(amount: 15, currencyCode: 'EGP'),
            bookRating: BookRating(averageRating: 4.9, ratingsCount: 7100),
          ),
        );
      },
    );
  }
}
