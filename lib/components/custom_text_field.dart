import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged; // Add this line

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.iconPath,
    this.obscureText = false,
    this.validator,
    this.onChanged, // Add this line
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
      validator: validator,
      onChanged: onChanged, // Add this line
    );
  }
}
