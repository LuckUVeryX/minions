import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:minions/features/auth/auth.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../helpers/helpers.dart';

void main() {
  group('App', () {
    testWidgets('renders ShadApp', (tester) async {
      final fakeAuthState = AuthState(
        AuthChangeEvent.initialSession,
        fakeSession,
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            authStatusProvider.overrideWith((_) => Stream.value(fakeAuthState)),
          ],
          child: const RouterApp(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(ShadApp), findsOneWidget);
    });
  });
}
