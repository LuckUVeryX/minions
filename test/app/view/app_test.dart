import 'package:flutter_test/flutter_test.dart';
import 'package:minions/app/app.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  group('App', () {
    testWidgets('renders MaterialApp', (tester) async {
      await tester.pumpWidget(const RouterApp());
      await tester.pumpAndSettle();
      expect(find.byType(ShadApp), findsOneWidget);
    });
  });
}
