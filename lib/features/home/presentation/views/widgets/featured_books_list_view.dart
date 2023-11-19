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
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomBookImage();
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 10,
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
