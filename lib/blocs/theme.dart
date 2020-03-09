import 'package:flutter/cupertino.dart';

class ThemeChanger extends ChangeNotifier {
  CupertinoThemeData _themeData;
  ThemeChanger(this._themeData);

  get getTheme => _themeData;
  void setTheme(CupertinoThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}
