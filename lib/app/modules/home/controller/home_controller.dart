import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  double xOffset = 0;

  @observable
  double yOffset = 0;

  @observable
  double scaleFactor = 1;

  @observable
  bool isDrawerOpen = false;

  HomeControllerBase() {}

  @action
  handleDrawer() {
    if (isDrawerOpen) {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    } else {
      xOffset = 220;
      yOffset = 200;
      scaleFactor = 0.8;
      isDrawerOpen = true;
    }
  }
}
