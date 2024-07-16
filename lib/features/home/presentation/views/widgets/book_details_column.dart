import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import 'book_action.dart';
import 'rating_row.dart';

class BookDetailsColumn extends StatelessWidget {
  final BookModel book;

  const BookDetailsColumn({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * .42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(book.thumbnail!)),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 35),
          width: MediaQuery.of(context).size.width * .75,
          child: Center(
            child: Text(
              book.title!,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                fontFamily: kGTSectraFineFont,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          (book.authors == null) ? "No Author" : book.authors![0],
          style: Styles.textStyle18
              .copyWith(color: const Color(0xffFFFFFF).withOpacity(0.7)),
        ),
        const SizedBox(height: 14),
        RatingRow(
          bookRating: book.bookRating!,
        ),
        const SizedBox(height: 35),
        BookAction(book: book),
      ],
    );
  }
}
