import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/signup/controller/signup_controller.dart';
import 'package:trip_app/app/modules/signup/signup_page.dart';
import 'package:trip_app/app/routes.dart';

class SignupModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignupController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.signup, child: (_, args) => const SignupPage()),
  ];
}
