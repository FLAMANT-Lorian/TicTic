import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context)?.appTitle ?? 'TicTic', // Si je suis certain je met le !
      // Nullsafety -> Prêter de l'attention au valeur null
      routes: routes,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate, // Material widgets
        GlobalWidgetsLocalizations.delegate, // widgets génériques
        GlobalCupertinoLocalizations.delegate, // iOS widgets
      ],
      supportedLocales: [const Locale('fr'), Locale('en')],
      theme: kAppTheme,
    );
  }
}
