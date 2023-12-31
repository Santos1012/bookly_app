import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField(
      {super.key, required this.customController, this.onFieldSubmitted});
  final TextEditingController customController;
  final Function(String? change)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: customController,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        hintText: "Search Book",
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Opacity(
            opacity: 0.5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
