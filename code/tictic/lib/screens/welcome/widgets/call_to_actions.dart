import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/login/login.dart';
import 'package:tictic/screens/register/register.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';

class CallToActions extends StatelessWidget {
  const CallToActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
          child: Text(AppLocalizations.of(context)!.continueWithOutLogin),
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
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.login),
                ),
                SizedBox(width: kHorizontalPadding),
                // Faire un espace d'un width défini (SizeBox())
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Register.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.register),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
