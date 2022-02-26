import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async  // [ERROR:flutter/lib/ui/ui_dart_state.cc(209)]
  // Unhandled Exception: Null check operator used on a null value
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences.setBool('isDark', value);
  }

  static bool? getBoolean({required String key}) {
    return sharedPreferences.getBool(key);
  }
}
