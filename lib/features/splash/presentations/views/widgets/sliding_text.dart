import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slidingAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AssetsData.logo),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Read Free Books",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        });
  }
}
