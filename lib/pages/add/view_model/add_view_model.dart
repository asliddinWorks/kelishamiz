
import 'package:flutter/material.dart';
import 'package:kelishamiz/pages/add/data/models/add_ui_model.dart';

class AddViewModel extends ChangeNotifier {
  /// categories
  List<AddCategoryUIModel> addCategoryUIModelList = [

    AddCategoryUIModel(
      title: "",
    ),

    AddCategoryUIModel(
      title: 'Kompyuter jihozlari',
      products: [
        AddProductUIModel(
          title: 'Klaviatura',
          items: [
            DropdownModel(
              items: [
                'Yengil avtomobil',
                'Yuk tashish va maxusus transport',
              ],
              title: 'Tovar turi',
              value: '',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'asdasd',
              hintText: 'ioijoij',
            ),
          ],
        ),
        AddProductUIModel(
          title: 'Sichqoncha',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Mebel',
      products: [
        AddProductUIModel(
          title: 'Stol',
        ),
        AddProductUIModel(
          title: 'Stul',
        ),
      ],
    ),

    AddCategoryUIModel(
      title: 'Uy joy',
      products: [
        AddProductUIModel(
          title: 'Kvartira',
          items: [
            TextFieldModel(
              controller: TextEditingController(),
              title: 'asdasd',
              hintText: 'ioijoij',
            ),
            DropdownModel(
              title: 'Xonanalar soni',
              value: '',
              items: [
                '1',
                '2',
              ],
            )
          ],
        ),
        AddProductUIModel(
          title: 'Xovli',
        ),
      ],
    ),
  ];















  /// functions
  AddCategoryUIModel selectedAddCategoryUIModel = AddCategoryUIModel(
    title: "E'lon joylash",
  );
  AddProductUIModel? selectedAddProductUIModel;

  bool isCategorySelect = false;
  void onChooseCategory(String value) {
    int index = addCategoryUIModelList.indexWhere((element) {
      return element.title == value;
    },);
    selectedAddCategoryUIModel = addCategoryUIModelList[index];
    selectedAddProductUIModel = selectedAddCategoryUIModel.products.first;

    if (!isCategorySelect) {
      addCategoryUIModelList.removeAt(0);
    }
    isCategorySelect = true;
    notifyListeners();
  }

  void onChooseProduct(String value) {
    int index = selectedAddCategoryUIModel.products.indexWhere((element) {
      return element.title == value;
    },);
    selectedAddProductUIModel = selectedAddCategoryUIModel.products[index];
    notifyListeners();
  }

}


