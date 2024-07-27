import 'package:flutter/foundation.dart';
import 'package:minions/app/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repo.g.dart';

@riverpod
AuthRepo authRepo(AuthRepoRef ref) {
  return AuthRepo(ref.watch(supabaseProvider));
}

class AuthRepo {
  const AuthRepo(this._client);

  final SupabaseClient _client;

  static const _redirectUrlApp = 'com.luckuveryx.minions://login-callback/';
  static const _redirectUrlWeb = 'https://luckuveryx.github.io/minions/';

  Future<void> signInEmail({required String email}) {
    return _client.auth.signInWithOtp(
      email: email,
      emailRedirectTo: () {
        if (kIsWeb) {
          return kDebugMode ? null : _redirectUrlWeb;
        }
        return _redirectUrlApp;
      }.call(),
    );
  }

  Future<void> signInEmailPassword({
    required String email,
    required String password,
  }) {
    return _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return _client.auth.signOut();
  }
}
