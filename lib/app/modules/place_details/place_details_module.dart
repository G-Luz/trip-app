import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/home/home_page.dart';
import 'package:trip_app/app/modules/place_details/controller/place_details_controller.dart';
import 'package:trip_app/app/modules/place_details/place_details_page.dart';
import 'package:trip_app/app/routes.dart';

class PlaceDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PlaceDetailsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.placeDetails, child: (_, args) => const PlaceDetailsPage()),
  ];
}
