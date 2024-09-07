
import 'package:flutter/cupertino.dart';
import 'package:kelishamiz/pages/fill_account/data/model/fill_model.dart';

class FillViewModel extends ChangeNotifier {

  void onCheckBox(FillModel model, int value) {
    model.selection[value] = !model.selection[value];
    notifyListeners();
  }

  List<FillModel> tariffs = [
    FillModel(
      tariffName: 'Oson start',
      day: 1,
      price: 5000,
    ),
    FillModel(
      tariffName: 'Tezkor start',
      day: 1,
      price: 30000,
    ),
    FillModel(
      tariffName: 'Wip start',
      day: 1,
      price: 80000,
    ),
  ];
}