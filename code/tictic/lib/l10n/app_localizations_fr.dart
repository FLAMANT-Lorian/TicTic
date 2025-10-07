// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (fr)';

  @override
  String get welcomeMessage1 => 'L’harmonie financière dans vos groupes, en toute simplicité !';

  @override
  String get welcomeMessage2 => 'Calculs instantanés, équité garantie avec TicTic !';

  @override
  String get welcomeMessage3 => 'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !';

  @override
  String get welcomeMessage4 => 'TicTic : Vos dépenses partagées en toute simplicité !';

  @override
  String get continueWithOutLogin => 'Continuer sans compte';

  @override
  String get or => 'ou';

  @override
  String get login => 'Connexion';

  @override
  String get register => 'Inscription';
}
