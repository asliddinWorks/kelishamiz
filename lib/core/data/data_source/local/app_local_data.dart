
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
}
