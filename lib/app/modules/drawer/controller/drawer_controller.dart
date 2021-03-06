import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:trip_app/app/constants/duration/durations.dart';
import 'package:trip_app/app/constants/environments.dart';
import 'package:trip_app/app/modules/home/controller/home_controller.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';
import 'package:trip_app/app/routes.dart';

part 'drawer_controller.g.dart';

class AppDrawerController = DrawerControllerBase with _$AppDrawerController;

abstract class DrawerControllerBase with Store {
  final HomeController homeController = Modular.get<HomeController>();
  final AppThemeController appThemeController =
      Modular.get<AppThemeController>();

  DrawerControllerBase() {}

  openThemeSettings() {
    openScreen(() => {
          Modular.to.pushNamed(Routes.settings, arguments: {'option': 'theme'}),
        });
  }

  openLanguageSettings() {
    openScreen(() => {
          Modular.to
              .pushNamed(Routes.settings, arguments: {'option': 'language'}),
        });
  }

  openFavoriteList() => {
        openScreen(() => {
              Modular.to.pushNamed(Routes.listTrips),
            })
      };

  openUserAccount() => {openScreen(() => {
    Modular.to.pushNamed(Routes.userAccount),
  })};

  openScreen(Function handleOpenPage) {
    homeController.handleDrawer();
    Future.delayed(const Duration(milliseconds: Durations.openPageFromDrawer),
        () => {handleOpenPage()});
  }
}
