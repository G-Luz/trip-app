import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/user_account/controller/user_account_controller.dart';
import 'package:trip_app/app/modules/user_account/user_account_page.dart';
import 'package:trip_app/app/routes.dart';

class UserAccountModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserAccountController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.userAccount, child: (_, args) => const UserAccountPage()),
  ];
}
