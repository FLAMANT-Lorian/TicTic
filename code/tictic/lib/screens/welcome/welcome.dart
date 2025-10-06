import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              LogoWelcome(),
              Spacer(),
              SizedBox(height: kVerticalPadding),
              TextSliderWithBullets(),
              Spacer(),
              // Fait un espace au millieu avec toute la place restante
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
                child: Text('Continuer sans compte'),
              ),
              SizedBox(height: kVerticalPadding),
              TextDivider(text: 'OU'),
              SizedBox(height: kVerticalPadding),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Je me connecte'),
                      ),
                      SizedBox(width: kHorizontalPadding),
                      // Faire un espace d'un width défini
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Créer mon compte'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
