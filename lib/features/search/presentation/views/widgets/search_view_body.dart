import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomSearchTextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Search Result",
                  style: Styles.textStyle30,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: ResultListView(),
          ),
        ],
      ),
    );
  }
}
