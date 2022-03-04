import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/about/about_module.dart';
import 'package:trip_app/app/modules/booking_trip_details/booking_trip_details_module.dart';
import 'package:trip_app/app/modules/home/home_module.dart';
import 'package:trip_app/app/modules/list_trips/list_trips_module.dart';
import 'package:trip_app/app/modules/login/login_module.dart';
import 'package:trip_app/app/modules/place_details/place_details_module.dart';
import 'package:trip_app/app/modules/settings/settings_module.dart';
import 'package:trip_app/app/modules/signup/signup_module.dart';
import 'package:trip_app/app/modules/user_account/user_account_module.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';
import 'package:trip_app/app/repositories/shared_prefs/shared_prefs_controller.dart';
import 'package:trip_app/app/routes.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => SharedPrefsController(), isSingleton: true),
    Bind((i) => AppThemeController(), isSingleton: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Routes.initialRoute, module: HomeModule()),
    ModuleRoute(Routes.login, module: LoginModule()),
    ModuleRoute(Routes.signup, module: SignupModule()),
    ModuleRoute(Routes.placeDetails, module: PlaceDetailsModule()),
    ModuleRoute(Routes.settings, module: SettingsModule()),
    ModuleRoute(Routes.bookingTripDetails, module: BookingTripDetailsModule()),
    ModuleRoute(Routes.listTrips, module: ListTripsModule()),
    ModuleRoute(Routes.userAccount, module: UserAccountModule()),
    ModuleRoute(Routes.aboutApp, module: AboutModule()),
  ];
}
