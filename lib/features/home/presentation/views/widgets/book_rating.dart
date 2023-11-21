import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final BookModel bookModel;

  const BookRating({super.key, required this.bookModel});
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
          (bookModel.volumeInfo.averageRating ?? 0).toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.end,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(${bookModel.volumeInfo.ratingsCount??0})",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
