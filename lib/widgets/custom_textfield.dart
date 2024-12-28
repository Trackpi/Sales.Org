import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      this.isLoginPage = false,
      this.isPassword = false,
      required this.hintText});
  final bool isLoginPage, isPassword;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        suffixIcon: isPassword
            ? Icon(
                Icons.visibility_off_outlined,
                color: isLoginPage
                    ? Colors.black
                    : Colors.white, // Eye icon for password visibility toggle
              )
            : Icon(null),
        fillColor: isLoginPage
            ? Colors.white
            : Color(0xFF1A1A1A), // Background color of input
        hintText: hintText,
        hintStyle: TextStyle(
            color: isLoginPage ? Colors.black : Colors.grey,
            fontSize: isLoginPage ? 14 : 12),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
