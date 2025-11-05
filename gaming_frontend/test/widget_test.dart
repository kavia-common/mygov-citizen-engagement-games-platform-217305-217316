import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaming_frontend/main.dart';

void main() {
  testWidgets('App renders HomeShell with top bar title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Allow any animations/layout
    await tester.pumpAndSettle();

    expect(find.text('MyGov Games'), findsOneWidget);
    // Navigation rail should exist
    expect(find.byType(NavigationRail), findsOneWidget);
  });
}
