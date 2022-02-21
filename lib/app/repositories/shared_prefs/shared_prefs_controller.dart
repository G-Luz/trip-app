import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_prefs_controller.g.dart';

class SharedPrefsController = SharedPrefsControllerBase
    with _$SharedPrefsController;

abstract class SharedPrefsControllerBase with Store {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<dynamic> getValueByKey(String key) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.get(key);
  }

  Future<bool> removeValueByKey(String key) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.remove(key);
  }

  Future<bool> setStringValue(String key, String value) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.setString(key, value);
  }

  Future<bool> setDoubleValue(String key, double value) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.setDouble(key, value);
  }

  Future<bool> setBoolValue(String key, bool value) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.setBool(key, value);
  }

  Future<bool> setIntValue(String key, int value) async {
    final SharedPreferences preferences = await _prefs;
    return preferences.setInt(key, value);
  }
}
