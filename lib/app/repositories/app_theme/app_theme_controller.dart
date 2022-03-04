import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:trip_app/app/constants/environments.dart';
import 'package:trip_app/app/repositories/shared_prefs/shared_prefs_controller.dart';

part 'app_theme_controller.g.dart';

class AppThemeController = AppThemeControllerBase with _$AppThemeController;

abstract class AppThemeControllerBase with Store {
  final SharedPrefsController _sharedPrefsController =
      Modular.get<SharedPrefsController>();

  @observable
  String theme = '';

  AppThemeControllerBase() {
    hasDefaultTheme().then((hasTheme) {

      print("Tem tema:???: ${hasTheme}");

      if (!hasTheme) {
        setTheme(Environments.lightTheme);
      } else {
        getTheme();
      }
    });
  }

  @action
  setTheme(String theme) async {
    await _sharedPrefsController.setStringValue(
        Environments.keyAppTheme, theme);
    this.theme = theme;
  }

  @action
  getTheme() async {
    var prefsResponse =
        await _sharedPrefsController.getValueByKey(Environments.keyAppTheme);

    print("O que é isso? ${prefsResponse}");

    theme = prefsResponse;
  }

  @action
  Future<bool> hasDefaultTheme() async {
    var prefsResponse =
        await _sharedPrefsController.getValueByKey(Environments.keyAppTheme);
    if (prefsResponse == null) {
      return false;
    }
    return true;
  }

  String checkLabelTheme() {
    return theme == Environments.darkTheme
        ? tr('theme.dark_theme')
        : tr('theme.light_theme');
  }
}
