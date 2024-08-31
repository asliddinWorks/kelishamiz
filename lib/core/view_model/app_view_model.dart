
import 'package:flutter/cupertino.dart';
import 'package:kelishamiz/core/data/data_source/local/app_local_data.dart';

class AppViewModel extends ChangeNotifier {

  int axisCount = 2;

  Future<void> saveGridAxisCount() async {
    axisCount = axisCount == 1 ? 2 : 1;
    await AppLocalData.saveGridAxisCount(axisCount);
    notifyListeners();
  }

  Future<void> getGridAxisCount() async {
    axisCount = await AppLocalData.getGridAxisCount();
    notifyListeners();
  }
}