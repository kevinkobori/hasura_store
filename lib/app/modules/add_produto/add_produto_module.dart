import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../app/modules/add_produto/add_produto_controller.dart';
import '../../../app/modules/add_produto/add_produto_page.dart';
import '../../app_module.dart';
import '../../modules/add_produto/repositories/add_produto_repository.dart';

class AddProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddProdutoController(i.get<AddProdutoRepository>())),
        Bind((i) => AddProdutoRepository(AppModule.to.get<HasuraConnect>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => AddProdutoPage()),
      ];

  static Inject get to => Inject<AddProdutoModule>.of();
}
