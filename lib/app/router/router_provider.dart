import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/auth/auth.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());
  ref
    ..onDispose(isAuth.dispose)
    ..listen(
      authStatusProvider.select(
        (value) => value.whenData((value) => value.session != null),
      ),
      (_, state) => isAuth.value = state,
    );

  final router = GoRouter(
    observers: [PosthogObserver()],
    navigatorKey: routerKey,
    refreshListenable: isAuth,
    initialLocation: const SplashRoute().location,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) {
      if (isAuth.value.unwrapPrevious().hasError) {
        return const AuthRoute().location;
      }
      if (isAuth.value.isLoading || !isAuth.value.hasValue) {
        return const SplashRoute().location;
      }

      final auth = isAuth.value.requireValue;

      final isSplash = state.uri.path == const SplashRoute().location;
      if (isSplash) {
        return auth ? const HomeRoute().location : const AuthRoute().location;
      }

      final isLoggingIn = state.uri.path == const AuthRoute().location;
      if (isLoggingIn) return auth ? const HomeRoute().location : null;

      return auth ? null : const SplashRoute().location;
    },
  );
  ref.onDispose(router.dispose);

  return router;
}
