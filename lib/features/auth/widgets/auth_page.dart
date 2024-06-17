import 'package:flutter/material.dart';
import 'package:minions/app/app.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthForm(),
    );
  }
}

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.l10n.login, style: context.textTheme.h2),
            Spacing.sp12,
            ShadInputFormField(
              placeholder: Text(context.l10n.email),
              keyboardType: TextInputType.emailAddress,
            ),
            ShadButton(
              width: double.infinity,
              text: Text(
                context.l10n.login,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
