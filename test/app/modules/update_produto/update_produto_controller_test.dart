import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/app_module.dart';
import 'package:hasura_store/app/modules/home/home_module.dart';
import 'package:hasura_store/app/modules/update_produto/update_produto_controller.dart';

void main() {
  initModule(AppModule());
  UpdateProdutoController updateproduto;

  setUp(() {
    updateproduto = HomeModule.to.get<UpdateProdutoController>();
  });

  group('UpdateProdutoController Test', () {
    test("First Test", () {
      expect(updateproduto, isInstanceOf<UpdateProdutoController>());
    });

    test("Set Value", () {});
  });
}
