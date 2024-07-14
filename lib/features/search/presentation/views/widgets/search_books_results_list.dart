import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchBooksResultsList extends StatelessWidget {
  const SearchBooksResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const BookItem();
      },
    );
  }
}
