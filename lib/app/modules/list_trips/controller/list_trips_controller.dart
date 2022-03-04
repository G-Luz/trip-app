import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';

part 'list_trips_controller.g.dart';

class ListTripsController = ListTripsControllerBase with _$ListTripsController;

abstract class ListTripsControllerBase with Store {
  @observable
  int filterSelectedIndex = 0;

  @action
  changeFilter(int filterIndex) {
    filterSelectedIndex = filterIndex;
  }
}
