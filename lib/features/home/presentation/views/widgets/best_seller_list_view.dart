import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: 6,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
