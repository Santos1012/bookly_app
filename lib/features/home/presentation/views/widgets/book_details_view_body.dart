import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/also_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
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
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also Like",
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 140,
                  child: AlsoBooksListView(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
