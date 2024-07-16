import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_details_app_bar.dart';
import 'book_details_column.dart';
import 'similar_books_list_view.dart';

class BookDetailsBody extends StatelessWidget {
  final BookModel book;

  const BookDetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const BookDetailsAppBar(),
                BookDetailsColumn(book: book),
                const Expanded(child: SizedBox(height: 50)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SimilarBooksListView(),
                const SizedBox(height: 15)
              ],
            ),
          )
        ],
      ),
    );
  }
}
