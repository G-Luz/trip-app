import 'package:mobx/mobx.dart';

part 'place_details_controller.g.dart';

class PlaceDetailsController = PlaceDetailsControllerBase
    with _$PlaceDetailsController;

abstract class PlaceDetailsControllerBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  sectionOptionCallback(int index) {
    selectedIndex = index;
  }
}
