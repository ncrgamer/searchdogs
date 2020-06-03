import 'package:searchdogs/app/modules/cadastro/cadastro_controller.dart';
import 'package:searchdogs/app/modules/cadastro/repository/cadastro_repository.dart';
import 'package:searchdogs/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:searchdogs/app/modules/home/home_page.dart';
import 'package:searchdogs/app/modules/login/login_controller.dart';
import 'package:searchdogs/app/modules/login/login_page.dart';
import 'package:searchdogs/app/modules/login/repository/login_repository.dart';
import 'package:searchdogs/app/modules/show/show_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => LoginRepository()),
        Bind((i) => CadastroRepository()),
        Bind((i) => LoginController(i.get<LoginRepository>())),
        Bind((i) => CadastroController(i.get<CadastroRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/login', child: (_, args) => LoginPage()),
        Router(
          '/show/:title/:image',
          child: (_, args) => ShowPage(
            image: args.params['image'],
            name: args.params['name'],
          ),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
