import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errMessage;

  const CustomErrorWidget({super.key, required this.errMessage});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Text(
          errMessage,
          textAlign: TextAlign.center,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
