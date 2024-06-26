import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/auth/auth.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthForm extends HookConsumerWidget {
  const AuthForm({
    super.key,
  });

  static const _testEmail = 'test@evolve-minions.com';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    ref.listen(authControllerProvider, (prev, next) {
      next.whenOrNull(
        error: (error, stackTrace) {
          final message = switch (error) {
            AuthException(:final message) => message,
            _ => error.toString(),
          };
          context.toaster.show(ShadToast.destructive(title: Text(message)));
        },
        data: (_) {
          final prevLoading = prev?.isLoading ?? false;
          if (!prevLoading) return;
          if (emailController.text == _testEmail) return;
          context.toaster.show(
            ShadToast(title: Text(context.l10n.authEmailSent)),
          );
        },
      );
    });

    Future<void> signInEmailPassword() async {
      final notifier = ref.read(authControllerProvider.notifier);
      await notifier.signInEmailPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    }

    return AutofillGroup(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.l10n.authLogin, style: context.textTheme.h2),
            Spacing.sp4,
            Text(context.l10n.authLoginDesc),
            Spacing.sp24,
            ...[
              ShadInputFormField(
                label: Text(context.l10n.authEmail),
                controller: emailController,
                placeholder: Text(context.l10n.authEmailPlaceholder),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              ListenableBuilder(
                listenable: emailController,
                builder: (context, child) {
                  if (emailController.text != _testEmail) {
                    return const Offstage();
                  }

                  return ShadInputFormField(
                    label: Text(context.l10n.authPassword),
                    controller: passwordController,
                    obscureText: true,
                    textInputAction: TextInputAction.go,
                    onSubmitted: (_) => signInEmailPassword(),
                  );
                },
              ),
              SignInButton(
                onPressed: () async {
                  if (emailController.text == _testEmail) {
                    return signInEmailPassword();
                  }

                  final notifier = ref.read(authControllerProvider.notifier);
                  return notifier.signInEmail(email: emailController.text);
                },
              ),
            ].insertBetween(Spacing.sp4),
          ],
        ),
      ),
    );
  }
}
