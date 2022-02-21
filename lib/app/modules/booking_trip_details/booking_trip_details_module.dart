import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/booking_trip_details/booking_trip_details_page.dart';
import 'package:trip_app/app/modules/booking_trip_details/controller/booking_trip_details_controller.dart';
import 'package:trip_app/app/routes.dart';

class BookingTripDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BookingTripDetailsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.placeDetails, child: (_, args) => const BookingTripDetails()),
  ];
}
