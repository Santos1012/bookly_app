import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class AlsoBooksListView extends StatelessWidget {
  const AlsoBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 30),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage(
              radius: 6,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
