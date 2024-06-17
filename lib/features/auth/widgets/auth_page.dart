import 'package:flutter/material.dart';
import 'package:minions/utils/build_context_extensions.dart';
import 'package:minions/widgets/widgets.dart';
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
            Text('Login', style: context.textTheme.h1),
            Spacing.sp12,
            ShadInputFormField(
              placeholder: const Text('Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            const ShadButton(
              width: double.infinity,
              text: Text(
                'Sign in with Email',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
