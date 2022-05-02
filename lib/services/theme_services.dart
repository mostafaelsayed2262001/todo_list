import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final GetStorage getStorage = GetStorage();
  final _key = 'isDarkMode';

  bool loadThemeFromBox() {

    return getStorage.read<bool>(_key)?? false;
  }
  saveThemeFromBox(bool isDarkMode) {
    return getStorage.write(_key, isDarkMode);
  }

  ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme(){
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeFromBox(!loadThemeFromBox());
  }
}
