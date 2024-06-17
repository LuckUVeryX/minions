import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/auth/auth.dart';
import 'package:minions/l10n/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignInButton extends HookConsumerWidget {
  const SignInButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      authControllerProvider.select((value) => value.isLoading),
    );

    return ShadButton(
      width: double.infinity,
      text: Text(
        context.l10n.authSignIn,
        textAlign: TextAlign.center,
      ),
      icon: isLoading ? const ShadButtonLoadingIcon() : null,
      onPressed: onPressed,
    );
  }
}
