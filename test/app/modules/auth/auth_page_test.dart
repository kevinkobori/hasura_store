import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/auth/auth_page.dart';

void main() {
  testWidgets('AuthPage has title', (tester) async {
    await tester.pumpWidget(buildTestableWidget(AuthPage(title: 'Auth')));
    final titleFinder = find.text('Auth');
    expect(titleFinder, findsOneWidget);
  });
}
