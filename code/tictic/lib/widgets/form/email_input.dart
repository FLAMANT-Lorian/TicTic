import 'package:flutter/material.dart';
import 'package:tictic/widgets/form/my_text_input.dart';

import '../../l10n/app_localizations.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      keyboardType: TextInputType.emailAddress,
      labelText: AppLocalizations.of(context)!.user_email_label,
      hintText: AppLocalizations.of(
        context,
      )!.user_email_placeholder,
      prefixIcon: Icon(Icons.email),
      validator: (value) {
        if(value == null || value.isEmpty){
          return AppLocalizations.of(context)!.form_field_required(AppLocalizations.of(context)!.user_email_label);
        };
      },
    );
  }
}
