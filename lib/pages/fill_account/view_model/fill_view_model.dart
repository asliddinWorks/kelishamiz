import 'package:flutter/cupertino.dart';
import 'package:kelishamiz/pages/fill_account/data/model/fill_model.dart';
import 'package:kelishamiz/pages/fill_account/data/model/table_model.dart';

class FillViewModel extends ChangeNotifier {
  // final filteredTables = tables.where((table) => table.isInput).toList();

  void onCheckBox(FillModel model, int value) {
    model.selection[value] = !model.selection[value];
    if ((model.selection[1]) && (model.selection[0])) {
      model.offset1 = -10;
      model.offset2 = -20;
    } else {
      model.offset1 = 0;
      model.offset2 = 0;
      if (model.selection[0]) {
        model.offset1 = -10;
        model.offset2 = -10;
      } else {
        if (model.selection[1]) {
          model.offset2 = -10;
        }
      }
    }
    notifyListeners();
  }

  List<FillModel> tariffs = [
    FillModel(
      tariffName: 'Oson start',
      day: 1,
      price: 5000,
    ),
    FillModel(
      tariffName: 'Tezkor savdo',
      day: 7,
      price: 30000,
    ),
    FillModel(
      tariffName: 'VIP e\'lonlar',
      day: 30,
      price: 80000,
    ),
  ];

  List<TableModel> tables = [
    TableModel(
        paymentType: 'Tezkor savdo',
        price: 50000,
        date: '12.01.2022',
        isInput: false),
    TableModel(
      paymentType: 'Click',
      price: 250000,
      date: '12.01.2022',
      isInput: true,
    ),
    TableModel(
        paymentType: 'VIP e\'lonlar',
        price: 6750000,
        date: '12.01.2022',
        isInput: false),
    TableModel(
      paymentType: 'Click',
      price: 250000,
      date: '12.01.2022',
      isInput: true,
    ),
  ];

  void changeTableType(int? index) {
    if (index == 0) {
      tableType = 0;
    } else if (index == 1) {
      tableType = 1;
    } else if (index == 2) {
      tableType = 2;
    }
    notifyListeners();
  }

  int tableType = 0;
}
