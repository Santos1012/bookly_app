import 'dart:developer';

import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccessState) {
          log(state.books.length.toString());
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl: state
                          .books[index].volumeInfo.imageLinks?.thumbnail ??
                      "https://images.ctfassets.net/az3stxsro5h5/24L2UM6hV3m4csMvBzkHbj/9d4583541bdb29ae0c6a9ff2b60f1313/After.jpeg?w=2389&h=2986&q=50&fm=webp",
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeatureBooksFailureState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CustomErrorWidget(
              errMessage: state.errMsg,
            ),
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: const CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
