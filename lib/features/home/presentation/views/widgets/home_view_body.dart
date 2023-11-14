import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 24),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}
