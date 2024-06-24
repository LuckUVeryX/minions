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

  static const _redirectUrl = 'com.luckuveryx.minions://login-callback/';

  Future<void> signInEmail({required String email}) {
    return _client.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : _redirectUrl,
    );
  }

  Future<void> signOut() {
    return _client.auth.signOut();
  }
}
