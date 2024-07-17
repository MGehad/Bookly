import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/image_widget.dart';
import '../../../data/models/book_model.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .pushReplacement(AppRouter.kBookDetailsView, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: ImageWidget(
          borderRadius: 5.0,
          thumbnail: book.thumbnail!,
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .2,
        ),
      ),
    );
  }
}
