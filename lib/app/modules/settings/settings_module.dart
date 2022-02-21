import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/settings/controller/settings_controller.dart';
import 'package:trip_app/app/modules/settings/settings_page.dart';
import 'package:trip_app/app/routes.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SettingsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.settings, child: (_, args) => const SettingsPage()),
  ];
}
