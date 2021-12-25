import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/splash/splash_page.dart';

void main() {
  testWidgets('SplashPage has title', (tester) async {
    await tester.pumpWidget(buildTestableWidget(SplashPage(title: 'Splash')));
    final titleFinder = find.text('Splash');
    expect(titleFinder, findsOneWidget);
  });
}
