import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  const BookActionButton({
    super.key,
    required this.buttonText,
    required this.textColor,
    required this.borderRadius,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStatePropertyAll(
          Size(MediaQuery.of(context).size.width * .37,
              MediaQuery.of(context).size.height * .06),
        ),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(borderRadius: borderRadius),
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
