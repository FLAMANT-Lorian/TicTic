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

  @override
  String get username_label => 'Nom d’utilisateur';

  @override
  String get username_placeholder => 'Jhon Doe';

  @override
  String get user_email_label => 'Adresse e-mail';

  @override
  String get user_email_placeholder => 'jhon@doe.be';

  @override
  String get user_password_label => 'Mot de passe';

  @override
  String form_field_required(String field_name) {
    return 'Le champ \"$field_name\" est requis.';
  }

  @override
  String get do_not_have_button => 'Je n\'ai pas encore de compte';

  @override
  String get already_have_account_button => 'J\'ai déjà un compte';
}
