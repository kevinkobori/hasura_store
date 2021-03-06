import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/auth/auth_controller.dart';
import 'package:hasura_store/app/modules/auth/auth_module.dart';

void main() {
  initModule(AuthModule());
  AuthController auth;

  setUp(() {
    auth = AuthModule.to.get<AuthController>();
  });

  group('AuthController Test', () {
    test("First Test", () {
      expect(auth, isInstanceOf<AuthController>());
    });

    test("Set Value", () {});
  });
}
