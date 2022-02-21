import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/constants/style/app_light_colors.dart';

class AppTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  Color textFieldBackgroundColor;
  Color hintFontColor;
  TextInputType textInputType;
  bool obscureText;
  Widget prefixIcon;
  Widget suffixIcon;

  AppTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    this.textFieldBackgroundColor = Colors.white,
    this.hintFontColor = Colors.white,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintFontColor),
        counterText: '',
        // border: InputBorder.none,
        // prefixIcon: Icon(Icons.alternate_email),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
