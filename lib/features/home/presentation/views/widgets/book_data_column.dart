import 'package:bookly/features/home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDataColumn extends StatelessWidget {
  const BookDataColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.32,
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
          padding: const EdgeInsets.only(top: 45),
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
        const SizedBox(height: 17),
        const RatingRow(),
        const SizedBox(height: 37),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * .4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  '19.99€',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * .4,
              decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  'Free preview',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 51),
        Padding(
          padding: const EdgeInsets.only(left: 30.0,bottom: 10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 25),
          height: MediaQuery.of(context).size.height * .13,
          child: ListView.builder(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * .18,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s'),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
