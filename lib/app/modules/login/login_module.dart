import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/login/controller/login_controller.dart';
import 'package:trip_app/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LoginPage()),
  ];
}
