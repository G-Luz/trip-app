import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:trip_app/app/constants/environments.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';

part 'settings_controller.g.dart';

class SettingsController = SettingsControllerBase with _$SettingsController;

abstract class SettingsControllerBase with Store {
  AppThemeController appThemeController = Modular.get();

  @action
  changeTheme() {
    if (appThemeController.theme == Environments.lightTheme) {
      appThemeController.setTheme(Environments.darkTheme);
    } else {
      appThemeController.setTheme(Environments.lightTheme);
    }
  }

  @action
  changeAppLanguage(BuildContext context) {
    if (context.locale == const Locale('pt', 'BR')) {
      context.setLocale(const Locale('en', 'US'));
    } else {
      context.setLocale(const Locale('pt', 'BR'));
    }
  }

  bool isPortugueseLanguage(BuildContext context){
    return context.locale == const Locale('pt', 'BR') ? true : false;
  }

  bool isDarkTheme() {
    return appThemeController.checkLabelTheme() == tr('theme.dark_theme')
        ? true
        : false;
  }
}
