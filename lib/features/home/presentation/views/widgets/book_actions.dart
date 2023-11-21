import 'package:bookly_app/core/utils/functions/launch_url_function.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  final BookModel bookModel;

  const BookActions({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            leftRadius: 18,
            rightRadius: 0,
            buttonText: "Free",
          ),
        ),
        Expanded(
          child: CustomButton(
            backGroundColor: const Color(0xFFEF8262),
            textColor: Colors.white,
            leftRadius: 0,
            rightRadius: 18,
            buttonText: "Preview",
            onPressed: () {
              launchUrlFunction(
                urlText: bookModel.volumeInfo.previewLink!,
                context: context,
              );
            },
          ),
        ),
      ],
    );
  }
}
