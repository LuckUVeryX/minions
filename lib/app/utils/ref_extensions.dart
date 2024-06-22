import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension WidgetRefX on WidgetRef {
  void listenError<T extends AsyncValue<dynamic>>(
    ProviderListenable<T> provider,
  ) {
    return listen(
      provider,
      (_, v) => v.whenOrNull(
        error: (e, _) => context.toaster.show(
          ShadToast.destructive(title: Text('$e')),
        ),
      ),
    );
  }
}
