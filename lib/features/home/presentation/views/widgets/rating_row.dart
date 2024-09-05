import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../domain/models/book_rating.dart';
import '../../../../../core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  final BookRating bookRating;

  const RatingRow({
    super.key,
    required this.bookRating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 5),
        Text(
          bookRating.averageRating.toString(),
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 7),
        Text(
          '(${bookRating.ratingsCount})',
          style: Styles.textStyle14
              .copyWith(color: const Color(0xffFFFFFF).withOpacity(0.5)),
        ),
      ],
    );
  }
}
