import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/welcome/widgets/bullets.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

class TextSliderWithBullets extends StatefulWidget {
  TextSliderWithBullets({super.key});

  final PageController _pageController = PageController(viewportFraction: 1);

  @override
  State<TextSliderWithBullets> createState() => _TextSliderWithBulletsState();
}

class _TextSliderWithBulletsState extends State<TextSliderWithBullets> {
  int _currentIdx = 0;

  late final _items = [
    AppLocalizations.of(context)!.welcomeMessage1,
    AppLocalizations.of(context)!.welcomeMessage2,
    AppLocalizations.of(context)!.welcomeMessage3,
    AppLocalizations.of(context)!.welcomeMessage4,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextSlider(
          pageController: widget._pageController,
          items: _items,
          currentIdx: _currentIdx,
          onPageChanged: (int index) {
            setState(() {
              _currentIdx = index;
            });
          },
        ),
        SizedBox(height: kVerticalPadding),
        Bullets(
          items: _items,
          pageController: widget._pageController,
          currentIdx: _currentIdx,
        ),
      ],
    );
  }
}
