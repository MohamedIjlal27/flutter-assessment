import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final bool obscureText;
  final String? Function(String?)? validator; // Add this line

  const IconTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.iconPath,
    this.obscureText = false,
    this.validator, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Image.asset(iconPath),
      ),
      validator: validator, // Add this line
    );
  }
}
