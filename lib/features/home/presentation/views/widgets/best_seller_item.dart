import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rating_row.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0, left: 30.0, top: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s')),
              ),
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
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFineFont),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14.copyWith(
                        color: const Color(0xffFFFFFF).withOpacity(0.7)),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 30),
                      const RatingRow(),
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
