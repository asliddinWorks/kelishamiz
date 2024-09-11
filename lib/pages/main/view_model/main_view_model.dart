
import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {

  int currentIndex = 0;
  void onTapNavBar(int index) {
    currentIndex = index;
    notifyListeners();
  }
}