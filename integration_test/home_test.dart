import 'package:flutter_my_alice/src/app.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end test', () {
    setUpAll(() async {
      await configureDependencies(Environment.test);
    });

    testWidgets('Lunch pixel', (widgetTester) async {
      await widgetTester.pumpWidget(const App());

      expect(find.text('Home'), findsWidgets);
    });
  });
}
