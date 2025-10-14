// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (en)';

  @override
  String get welcomeMessage1 => 'Financial harmony in your groups, made easy!';

  @override
  String get welcomeMessage2 => 'Instant calculations, guaranteed fairness with TicTic!';

  @override
  String get welcomeMessage3 => 'Tedious calculations? No thanks. Choose simplicity with TicTic!';

  @override
  String get welcomeMessage4 => 'TicTic: Share your expenses with ease!';

  @override
  String get continueWithOutLogin => 'Continue without login';

  @override
  String get or => 'or';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get username_label => 'Username';

  @override
  String get username_placeholder => 'Jhon Doe';

  @override
  String get user_email_label => 'E-mail address';

  @override
  String get user_email_placeholder => 'jhon@doe.be';

  @override
  String get user_password_label => 'Password';

  @override
  String form_field_required(String field_name) {
    return 'The field \"$field_name\" is required.';
  }

  @override
  String get do_not_have_button => 'I don\'t have an account';

  @override
  String get already_have_account_button => 'I already have an account';
}
