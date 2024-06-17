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

  Future<void> signInEmailPassword({
    required String email,
    required String password,
  }) {
    return _client.auth.signInWithPassword(email: email, password: password);
  }

  Future<void> signOut() {
    return _client.auth.signOut();
  }
}
