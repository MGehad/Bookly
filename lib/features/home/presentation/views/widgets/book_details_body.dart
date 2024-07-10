import 'package:bookly/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'book_data_column.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsAppBar(),
        BookDataColumn(),
      ],
    );
  }
}