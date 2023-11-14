import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The  Jungle Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(),
          const SizedBox(
            height: 37,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BookActions(),
          ),
          
        ],
      ),
    );
  }
}
