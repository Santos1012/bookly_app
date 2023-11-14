import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backGroundColor;
  final Color textColor;
  final double leftRadius;
  final double rightRadius;
  final String buttonText;

  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.leftRadius,
    required this.rightRadius,
    required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(leftRadius),
              right: Radius.circular(rightRadius),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
