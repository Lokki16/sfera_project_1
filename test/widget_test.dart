import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

void main() {
  testWidgets("display current user", (WidgetTester tester) async {
    final findTapButtonRouteReg = find.byKey(const ValueKey("route_reg"));
    final addUser = find.byKey(const ValueKey('emailfield'));
    final addPassword = find.byKey(const ValueKey('passwordfield'));
    final findTapButtonSignUp = find.byKey(const ValueKey('signup_button'));

    final randomUser = '${getRandomString(5)}@gmail.com';
    final randonPassword = getRandomString(6);

    await tester.pumpWidget(MaterialApp(home: RegistrationPage()));
    await tester.enterText(addUser, randomUser);
    await tester.enterText(addPassword, randonPassword);
    await tester.tap(findTapButtonSignUp);

    expect(find.text('Rick'), findsWidgets);

//expect(actual, matcher)
  });
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
