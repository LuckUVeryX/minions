import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

extension WidgetRefX on WidgetRef {
  void listenError<T extends AsyncValue<dynamic>>(
    ProviderListenable<T> provider,
  ) {
    return listen(
      provider,
      (_, v) => v.whenOrNull(
        error: (e, _) {
          final message = switch (e) {
            AuthException(:final message) => message,
            PostgrestException(:final message) => message,
            _ => '$e',
          };
          context.toaster.show(
            ShadToast.destructive(title: Text(message)),
          );
        },
      ),
    );
  }
}
