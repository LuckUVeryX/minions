import 'package:minions/app/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_provider.g.dart';

@riverpod
User user(UserRef ref) {
  final user = ref.watch(supabaseProvider).auth.currentUser;
  assert(
    user != null,
    'This provider should only be used in a context where a user is logged in',
  );
  return user!;
}
