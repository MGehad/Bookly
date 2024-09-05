import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../constants.dart';
import '../../../features/home/domain/models/book_model.dart';
import '../app_router.dart';
import '../styles.dart';
import 'image_widget.dart';
import '../../../features/home/presentation/views/widgets/rating_row.dart';

class BookItem extends StatelessWidget {
  final BookModel book;

  const BookItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [
            ImageWidget(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * .2,
              thumbnail: book.thumbnail!,
              borderRadius: 5.0,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFineFont),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    (book.authors!.isEmpty) ? "No Author" : book.authors![0],
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xffFFFFFF).withOpacity(0.7),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (book.listPrice!.amount == 0)
                            ? "Free"
                            : "${book.listPrice!.amount.toString()} ${book.listPrice!.currencyCode.toString()}",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 30),
                      RatingRow(
                        bookRating: book.bookRating!,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
