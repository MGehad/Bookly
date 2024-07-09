import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 52.0, left: 40.0),
      child: Text(
        'Best Seller',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
