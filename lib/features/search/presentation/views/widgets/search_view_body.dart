import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/manger/search_result_cubit/search_result_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 40,
                ),
                CustomSearchTextField(
                  customController: customController,
                  onFieldSubmitted: (change) {
                    BlocProvider.of<SearchResultCubit>(context)
                        .fetchNewestBooks(subject: change ?? "");
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Search Result",
                  style: Styles.textStyle30,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 30,
                ),
                const ResultListView(),
              ],
            ),
          ),
          // const SliverFillRemaining(
          //   hasScrollBody: true,
          //   child: ResultListView(),
          // ),
        ],
      ),
    );
  }
}
