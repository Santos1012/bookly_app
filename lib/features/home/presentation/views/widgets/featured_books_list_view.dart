import 'package:bookly_app/features/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FeatureListViewItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: 10,
      ),
    );
  }
}
