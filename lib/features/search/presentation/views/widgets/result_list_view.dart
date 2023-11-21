import 'dart:developer';

import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/search_result_cubit/search_result_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultListView extends StatefulWidget {
  const ResultListView({super.key});

  @override
  State<ResultListView> createState() => _ResultListViewState();
}

class _ResultListViewState extends State<ResultListView> {
  @override
  void initState() {
    BlocProvider.of<SearchResultCubit>(context).fetchNewestBooks(subject: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccessState) {
          try {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksListViewItem(
                    book: state.books[index],
                  ),
                );
              },
            );
          } on Exception catch (e) {
            log(e.toString());
            return const SizedBox();
          }
        } else if (state is SearchResultFailureState) {
          log(state.errMsg.toString());
          return CustomErrorWidget(
            errMessage: state.errMsg,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
