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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();

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
          context.toaster.show(
            ShadToast(title: Text(context.l10n.authEmailSent)),
          );
        },
      );
    });

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
              SignInButton(
                onPressed: () async {
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
