import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(children: [
        Expanded(child: Divider(height: kDividerHeight, color: kMainColor, thickness: 2)),
        SizedBox(width: kHorizontalPaddingS),
        Text(text),
        SizedBox(width: kHorizontalPaddingS),
        Expanded(child: Divider(height: kDividerHeight, color: kMainColor, thickness: 2)),
      ]),
    );
  }
}
