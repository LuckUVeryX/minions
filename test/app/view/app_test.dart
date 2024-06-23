import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../helpers/helpers.dart';

void main() {
  group('App', () {
    testWidgets('renders ShadApp', (tester) async {
      await tester.pumpApp(const Offstage());
      await tester.pumpAndSettle();
      expect(find.byType(ShadApp), findsOneWidget);
    });
  });
}
