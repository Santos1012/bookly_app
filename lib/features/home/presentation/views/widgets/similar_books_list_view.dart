import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 30),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      radius: 6,
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "http//:",
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: state.books.length,
              ),
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(errMessage: state.errMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
