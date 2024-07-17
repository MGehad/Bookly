import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/book_model.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/image_widget.dart';
import 'book_action.dart';
import 'rating_row.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel book;

  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageWidget(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * .42,
          thumbnail: book.thumbnail!,
          borderRadius: 15,
        ),
        Container(
          padding: const EdgeInsets.only(top: 35),
          width: MediaQuery.of(context).size.width * .8,
          child: Center(
            child: Text(
              book.title!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.normal,
                fontFamily: kGTSectraFineFont,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          (book.authors!.isEmpty) ? "No Author" : book.authors![0],
          style: Styles.textStyle18
              .copyWith(color: const Color(0xffFFFFFF).withOpacity(0.7)),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
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
