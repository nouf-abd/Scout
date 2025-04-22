import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout/main.dart';

void main() {
  testWidgets('App loads onboarding screen', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    expect(find.text("Choose your role to proceed."), findsOneWidget);
    expect(find.text("Player"), findsOneWidget);
    expect(find.text("Scout"), findsOneWidget);
    expect(find.text("Coach"), findsOneWidget);
  });
}
