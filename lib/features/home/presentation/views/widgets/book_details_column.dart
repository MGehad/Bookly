import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'rating_row.dart';

class BookDetailsColumn extends StatelessWidget {
  const BookDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * .42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s')),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 35),
          width: MediaQuery.of(context).size.width * .75,
          child: const Center(
            child: Text(
              'The Jungle Book',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                fontFamily: kGTSectraFineFont,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'J.K. Rowling',
          style: Styles.textStyle18
              .copyWith(color: const Color(0xffFFFFFF).withOpacity(0.7)),
        ),
        const SizedBox(height: 16),
        const RatingRow(),
        const SizedBox(height: 35),
        const BookAction(),
      ],
    );
  }
}
