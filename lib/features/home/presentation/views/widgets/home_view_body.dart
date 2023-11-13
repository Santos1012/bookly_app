import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 24),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
              textAlign: TextAlign.left,
            ),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 130,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            children: [
              SizedBox(
                width: 300,
                child: Text(
                  "Harry Potter And the Goblet of Fire",
                  style: TextStyle(
                    fontFamily: kGtSectrafina,
                    fontSize: 30,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                "J.K. Rowling",
              )
            ],
          ),
        ],
      ),
    );
  }
}
