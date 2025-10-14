import 'package:flutter/material.dart';
import 'package:tictic/widgets/form/my_text_input.dart';

import '../../l10n/app_localizations.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      labelText: AppLocalizations.of(context)!.username_label,
      hintText: AppLocalizations.of(
        context,
      )!.username_placeholder,
      prefixIcon: Icon(Icons.person),
      validator: (value) {
        if(value == null || value.isEmpty){
          return AppLocalizations.of(context)!.form_field_required(AppLocalizations.of(context)!.username_label);
        };
      },
    );
  }
}
