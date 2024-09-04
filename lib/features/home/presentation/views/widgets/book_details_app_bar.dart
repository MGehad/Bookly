import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/functions/open_url.dart';
import '../../../../../core/utils/functions/snack_bar.dart';

class BookDetailsAppBar extends StatelessWidget {
  final String? buyUrl;

  const BookDetailsAppBar({
    super.key,
    required this.buyUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              if (buyUrl != null) {
                openUrl(context, buyUrl!);
              } else {
                snackBar(context, 'Not Available!!');
              }
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
