import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
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
        const Text(
          '4.8',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 7),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
              color: const Color(0xffFFFFFF).withOpacity(0.5)
          ),
        ),
      ],
    );
  }
}