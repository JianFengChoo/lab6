import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5_part2/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();
      
      final agree = find.byType(Checkbox);
      final activateButton = find.byKey(Key("activate"));

      final otpButton = find.byKey(Key("otpButton"));

      final factory1 = find.byKey(Key("factory1"));
      final factory2 = find.byKey(Key("factory2"));

      final person = find.byIcon(Icons.account_box_outlined);
      final add = find.byKey(Key("addButton"));
      final submit = find.byKey(Key("submitButton"));

      final setting = find.byIcon(Icons.settings_outlined);

      final home = find.byIcon(Icons.home_outlined);

      await tester.tap(agree);
      await tester.tap(activateButton);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(otpButton);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(factory2);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(factory1);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(person);
      await tester.pumpAndSettle();

      await tester.tap(add);
      await tester.pumpAndSettle();

      await tester.tap(submit);
      await tester.pumpAndSettle();

      await tester.tap(setting);
      await tester.pumpAndSettle();

      await tester.tap(home);
      await tester.pumpAndSettle();
    });
  });
}