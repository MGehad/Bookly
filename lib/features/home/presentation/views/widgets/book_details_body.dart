import 'package:flutter/material.dart';

import 'book_data_column.dart';
import 'book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          BookDetailsAppBar(),
          BookDataColumn(),
        ],
      ),
    );
  }
}
