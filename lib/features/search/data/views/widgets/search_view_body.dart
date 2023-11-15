import 'package:bookly_app/features/search/data/views/widgets/custom_search_text_feild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
          child: CustomSearchTextField(),
        )
      ],
    );
  }
}
