import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    this.prefixIcon,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    required this.labelText,
  });

  final Widget? prefixIcon;
  final String? hintText;
  final String labelText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        label: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPaddingXS,
            vertical: kVerticalPaddingXS,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: Text(style: kLabelStyle, labelText),
        ),
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // Pour que le label est toujours sur le dessus de la bordure
        fillColor: kBackgroundColor,
      ),
    );
  }
}
