import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/register/register.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';

import '../../l10n/app_localizations.dart';

class Login extends StatelessWidget {
  Login({super.key});

  static String routeName = '/login';
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Padding(
        padding: const EdgeInsets.only(top: kVerticalPadding),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(height: kVerticalPaddingL),
            LogoWelcome(),
            SizedBox(height: kVerticalPaddingXL),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Form(
                key: _loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    EmailInput(),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(),
                    SizedBox(height: kVerticalPaddingL),
                    ElevatedButton(
                      onPressed: () {
                        _loginFormKey.currentState?.validate();
                      },
                      child: Text(AppLocalizations.of(context)!.login),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(AppLocalizations.of(context)!.do_not_have_button),
                SizedBox(height: kVerticalPaddingXS),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Register.routeName);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
                  child: Text(AppLocalizations.of(context)!.register),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
