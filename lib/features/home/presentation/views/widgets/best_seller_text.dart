import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 56.0, left: 30.0, bottom: 8.0),
      child: Text(
        'Best Seller',
        style: Styles.textStyle18,
      ),
    );
  }
}
