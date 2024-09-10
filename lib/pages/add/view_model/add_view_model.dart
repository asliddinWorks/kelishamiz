
import 'package:flutter/material.dart';
import 'package:kelishamiz/pages/add/data/models/add_ui_model.dart';

class AddViewModel extends ChangeNotifier {
  List<AddUIModel> addUIModelList = [
    AddUIModel(
      title: 'Transport',
      items: [
        DropdownModel(
          items: [
            'Yengil avtomobil',
            'Yuk tashish va maxusus transport',
            'Motosikl va mototexnika',
            'Ehtiyot qismlar va aksesurarlar',
          ],
          title: 'pppppp',
          value: '',
        ),
        TextFieldModel(
          controller: TextEditingController(),
          title: 'asdasd',
          hintText: 'ioijoij',
        ),
        TextFieldModel(
          controller: TextEditingController(),
          title: 'asdasd',
          hintText: 'ioijoij',
        ),
      ],
    ),

    AddUIModel(
      title: 'Mebel',
      items: [
        DropdownModel(
          items: [
            '1212',
            '23r2ve',
          ],
          title: 'Tovar turi', 
        ),
      ]
    ),
    AddUIModel(
      title: 'Mebel',
      items: [
        DropdownModel(
          items: [
            '1212',
            '23r2ve',
          ],
          title: 'Tovar turi',
        ),
      ]
    ),
  ];

  AddUIModel selectedAddUIModel = AddUIModel(
    title: "E'lon joylash",
  );
  void onChooseCategory(String value) {
    int index = addUIModelList.indexWhere((element) {
      return element.title == value;
      },
    );
    print(index);
    selectedAddUIModel = addUIModelList[index];
    notifyListeners();
  }
}


