import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final double? radius;

  const CustomBookImage({super.key, this.radius=18});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!),
            color: Colors.red,
            image: const DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
