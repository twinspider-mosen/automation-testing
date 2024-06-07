import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App Test', () {
    late FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    // test('Increment the counter', () async {
    //   // Define the Finders for the button and the counter text
    //   final buttonFinder = find.byValueKey('increment');
    //   final counterTextFinder = find.byValueKey('counter');

    //   // First, tap on the button
    //   await driver.tap(buttonFinder);

    //   // Then, verify the counter text has been incremented to 1
    //   expect(await driver.getText(counterTextFinder), "1");

    //   // Tap on the button again
    //   await driver.tap(buttonFinder);

    //   // Then, verify the counter text has been incremented to 2
    //   expect(await driver.getText(counterTextFinder), "2");
    // });

    test("Login Form Test", () async {
      final loginFinder = find.byValueKey('login');
      final emailFinder = find.byValueKey('email');
      final passFinder = find.byValueKey('password');

      await driver.tap(emailFinder);
      await driver.enterText("mosen@email.com");
      await driver.tap(passFinder);
      await driver.enterText("mosen@1234");
      await driver.tap(loginFinder);
    });
  });
}
