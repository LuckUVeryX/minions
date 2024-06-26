import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/bootstrap.dart';

void main() {
  bootstrap(
    () => const ProviderScope(
      observers: [LogObserver()],
      child: RouterApp(),
    ),
  );
}
