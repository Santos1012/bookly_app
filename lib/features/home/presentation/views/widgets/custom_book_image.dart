import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final double? radius;
  final String? imageUrl;

  const CustomBookImage({super.key, this.radius = 18, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(radius!),
            child: CachedNetworkImage(
              placeholder: (context, url) => const CustomLoadingIndicator(),
              errorWidget: (context, url, error) => const Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  AssetsData.notAvailableImage,
                ),
              ),
              imageUrl: imageUrl??"",
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
