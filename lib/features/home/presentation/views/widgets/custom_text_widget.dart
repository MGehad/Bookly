import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;

  const CustomTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle18,
    );
  }
}
