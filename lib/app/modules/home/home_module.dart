import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/drawer/controller/drawer_controller.dart';
import 'package:trip_app/app/modules/home/controller/home_controller.dart';
import 'package:trip_app/app/modules/home/home_page.dart';
import 'package:trip_app/app/routes.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
    // Bind.lazySingleton((i) => AppDrawerController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.initialRoute, child: (_, args) => const HomePage()),
  ];
}
