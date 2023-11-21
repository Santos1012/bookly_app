import 'package:flutter/material.dart';

void customSnackBar(context, {required String url}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Can't launch ==>>  $url"),
    ),
  );
}
