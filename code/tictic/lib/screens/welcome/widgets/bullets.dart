import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/durations.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/bullet.dart';

class Bullets extends StatelessWidget {
  const Bullets({super.key, required this.items, required this.pageController, required this.currentIdx});

  final List<String> items;
  final PageController pageController;
  final int currentIdx;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((item) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          // Pour que le margin fonctionne comme le padding
          onTap: () {
            pageController.animateToPage(
              items.indexOf(item),
              duration: kAnimationDuration,
              curve: Curves.easeInOut,
            );
          },
          child: Bullet(
            marginRight: items.indexOf(item) == items.length - 1
                ? 0
                : kHorizontalPaddingL,
            width: kSliderButtonWidth,
            color: items.indexOf(item) == currentIdx
                ? kMainColor
                : kSecondaryColor,
          ),
        );
      }).toList(), // Pour convertir vers un véritable tableaux
    );
  }
}
