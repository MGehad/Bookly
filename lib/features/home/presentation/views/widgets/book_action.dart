import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'book_action_button.dart';

class BookAction extends StatelessWidget {
  final BookModel book;

  const BookAction({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookActionButton(
          backgroundColor: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          buttonText: (book.listPrice!.amount == 0)
              ? "Free"
              : "${book.listPrice!.amount.toString()} ${book.listPrice!.currencyCode.toString()}",
          textColor: Colors.black,
        ),
        const BookActionButton(
          backgroundColor: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
          buttonText: 'Free preview',
          textColor: Colors.white,
        ),
      ],
    );
  }
}
