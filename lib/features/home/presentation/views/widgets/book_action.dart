import 'package:flutter/material.dart';
import 'book_action_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookActionButton(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          buttonText: '19.99€',
          textColor: Colors.black,
        ),
        BookActionButton(
          backgroundColor: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          buttonText: 'Free preview',
          textColor: Colors.white,
        ),
      ],
    );
  }
}
