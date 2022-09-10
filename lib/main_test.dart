import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(const MyApp());

    var testTextInput = find.byKey(const Key('mySpecialEditableText1234'));
    await tester.enterText(testTextInput, 'Luiza');
    await tester.pump();
    expect(find.text('Hello LUIZA!'), findsOneWidget);
  });
}
