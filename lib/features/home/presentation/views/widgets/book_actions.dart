import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            leftRadius: 18,
            rightRadius: 0,
            buttonText: "19.99€",
          ),
        ),
        Expanded(
          child: CustomButton(
            backGroundColor: Color(0xFFEF8262),
            textColor: Colors.white,
            leftRadius: 0,
            rightRadius: 18,
            buttonText: "Free Preview",
          ),
        ),
      ],
    );
  }
}
