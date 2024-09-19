import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    this.controller,
    required this.icon,
    required this.hintText,
    required this.obscureText,
    required this.hMargin,
  });

  final String hintText;
  final bool obscureText;
  final controller;
  final double hMargin;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hMargin, vertical: 0.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          constraints: const BoxConstraints(maxHeight: 50),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: icon,
          prefixIconColor: Colors.grey,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
