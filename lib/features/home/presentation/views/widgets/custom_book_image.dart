import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final double? radius;
  final String imageUrl;

  const CustomBookImage({super.key, this.radius = 18, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
