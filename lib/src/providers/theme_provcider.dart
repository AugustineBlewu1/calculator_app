import 'package:calculator_app/src/models/preference_theme.dart';
import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference themePreference = ThemePreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set dartTheme(bool value) {
    _darkTheme = value;
    themePreference.setThemePref(value);
    notifyListeners();
  }
}
