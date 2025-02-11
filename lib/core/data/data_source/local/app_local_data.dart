
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalData {

  static Future<void> saveGridAxisCount(int gridCount) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('axisCount', gridCount);
  }

  static Future<int> getGridAxisCount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('axisCount') ?? 2;
  }

  static Box<dynamic> box = Hive.box('appBox');

  static Future<void> saveUserToken(String? token) async {
    await box.put('token', token);
  }

  static Future<String?> get getUserToken async {
    return await box.get('token');
  }

  static Future<void> saveUserRefreshToken(String? refreshToken) async {
    await box.put('refreshToken', refreshToken);
  }

  static Future<String?> get getUserRefreshToken async {
    return await box.get('refreshToken');
  }

  static Future<void> removeAll() async {
    await box.deleteAll([
      'token',
      'refreshToken',
      'userModel',
    ]);
  }

}
