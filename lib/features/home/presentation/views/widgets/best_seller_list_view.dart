import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return BooksListViewItem(
                book: state.books[index],
              );
            },
          );
        } else if (state is NewestBooksFailureState) {
          return Center(
            child: CustomErrorWidget(errMessage: state.errMsg),
          );
        } else {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
