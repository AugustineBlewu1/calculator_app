import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const themeSe = "THEMESETTING";

  setThemePref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeSe, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeSe) ?? false;
  }
}
