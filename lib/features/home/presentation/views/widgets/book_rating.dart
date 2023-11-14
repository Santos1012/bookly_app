import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 13,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.end,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(2390)",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
