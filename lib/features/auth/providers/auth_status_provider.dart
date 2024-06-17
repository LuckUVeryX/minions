import 'package:minions/app/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_status_provider.g.dart';

@riverpod
Stream<AuthState> authStatus(AuthStatusRef ref) {
  final auth = ref.watch(supabaseProvider).auth;
  return auth.onAuthStateChange;
}
