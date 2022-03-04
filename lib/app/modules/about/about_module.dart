import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/about/about_page.dart';
import 'package:trip_app/app/modules/about/controller/about_controller.dart';
import 'package:trip_app/app/modules/user_account/controller/user_account_controller.dart';
import 'package:trip_app/app/modules/user_account/user_account_page.dart';
import 'package:trip_app/app/routes.dart';

class AboutModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AboutController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.aboutApp, child: (_, args) => const AboutPage()),
  ];
}
