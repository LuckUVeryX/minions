import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minions/app/app.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  group('App', () {
    testWidgets('renders ShadApp', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: RouterApp()));
      await tester.pumpAndSettle();
      expect(find.byType(ShadApp), findsOneWidget);
    });
  });
}
