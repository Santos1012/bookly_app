import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;

  const BookDetailsViewBody({super.key, required this.bookModel});
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
                child: CustomBookImage(
                  imageUrl:
                      bookModel.volumeInfo.imageLinks?.thumbnail ?? "http//:",
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                bookModel.volumeInfo.title ?? "",
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bookModel.volumeInfo.description != null
                      ? bookModel.volumeInfo.description!
                      : bookModel.volumeInfo.authors?[0] ?? "",
                  textAlign: TextAlign.center,
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white.withOpacity(0.7),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              bookModel.volumeInfo.averageRating != null
                  ? BookRating(
                      bookModel: bookModel,
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: BookActions(
                  bookModel: bookModel,
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also Like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 3,
                child: SizedBox(
                  height: 140,
                  child: SimilarBooksListView(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
