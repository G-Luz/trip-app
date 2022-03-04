import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/list_trips/controller/list_trips_controller.dart';
import 'package:trip_app/app/modules/list_trips/list_trips_page.dart';
import 'package:trip_app/app/routes.dart';

class ListTripsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListTripsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.listTrips, child: (_, args) => const ListTripsPage()),
  ];
}
