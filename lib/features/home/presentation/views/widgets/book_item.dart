import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/image_widget.dart';
import '../../../data/models/book_model.dart';
import 'rating_row.dart';

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
        margin: const EdgeInsets.only(top: 20.0),
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
                    (book.authors == null) ? "No Author" : book.authors![0],
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
