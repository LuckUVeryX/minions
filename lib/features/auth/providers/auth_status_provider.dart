import 'package:minions/app/app.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_status_provider.g.dart';

@riverpod
Stream<AuthState> authStatus(AuthStatusRef ref) async* {
  final auth = ref.watch(supabaseProvider).auth;

  final sub = auth.onAuthStateChange.listen(
    (state) {
      switch (state.event) {
        case AuthChangeEvent.initialSession:
        case AuthChangeEvent.signedIn:
          final id = state.session?.user.id;
          if (id == null) break;
          final email = state.session?.user.email;
          Posthog().identify(
            userId: id,
            userProperties: {
              if (email != null) 'email': email,
            },
          );
        case AuthChangeEvent.signedOut:
          Posthog().reset();
        case AuthChangeEvent.passwordRecovery:
        case AuthChangeEvent.tokenRefreshed:
        case AuthChangeEvent.userUpdated:
        case AuthChangeEvent.mfaChallengeVerified:
        // ignore: deprecated_member_use
        case AuthChangeEvent.userDeleted:
          break;
      }
    },
  );

  ref.onDispose(sub.cancel);
  yield* auth.onAuthStateChange;
}
