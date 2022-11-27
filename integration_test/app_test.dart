import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:sfera_project_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('App_test', () {
    testWidgets('full_app_test', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      final findTapButtonRouteReg = find.byKey(const Key("route_reg"));
      final addUser = find.byKey(const Key('emailfield'));
      final addPassword = find.byKey(const Key('passwordfield'));
      final findTapButtonSignUp = find.byKey(const Key('signup_button'));

      final randomUser = '${getRandomString(5)}@gmail.com';
      final randonPassword = getRandomString(6);

      await tester.tap(findTapButtonRouteReg);
      await tester.pumpAndSettle();

      /*await tester.pumpAndSettle();
      await tester.tap(findTapButtonRouteReg);
      await tester.pumpAndSettle();*/

      //expect(find.text('Регистрация'), findsWidgets);
      await tester.enterText(addUser, randomUser);
      await tester.enterText(addPassword, randonPassword);
      await tester.tap(findTapButtonSignUp);
    });
  });
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
