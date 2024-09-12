
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/pages/add/data/models/add_ui_model.dart';

class AddViewModel extends ChangeNotifier {

  /// categories
  List<AddCategoryUIModel> addCategoryUIModelList = [

    AddCategoryUIModel(
      title: "",
    ),

    AddCategoryUIModel(
      title: 'Transport',
      products: [
        AddProductUIModel(
          title: 'Yengil avtomobil',
          items: [
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Kuzov',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'KPP',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Dvigatel',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Rang',
            ),
          ],
        ),

        AddProductUIModel(
          title: 'Yuk tashish va maxusus transport',

        ),

        AddProductUIModel(
          title: 'Motosikl va mototexnika',
          items: [
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Rang',
            )
          ]
        ),

        AddProductUIModel(
          title: 'Ehtiyot qismlar va aksesurarlar',
        ),

        AddProductUIModel(
          title: 'Boshqalari',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Ko’chmas mulk',
      products: [
        AddProductUIModel(
          title: 'Kvartira',
        ),
        AddProductUIModel(
          title: 'Hovli uy-joy',
        ),
        AddProductUIModel(
          title: 'Yer, uchaska',
        ),
        AddProductUIModel(
          title: 'Boshqalari',
        ),
      ],
    ),

    AddCategoryUIModel(
      title: 'Ish va hizmatlar',
      products: [
        AddProductUIModel(
          title: 'Qurulish va remont',
          items: [
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Kuzov',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'KPP',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Dvigatel',
            ),
            TextFieldModel(
              controller: TextEditingController(),
              title: 'Rang',
            ),

          ],
        ),
        AddProductUIModel(
          title: 'Kunlik ishlar',
        ),
        AddProductUIModel(
          title: 'IT sohasida hizmatlar',
        ),
        AddProductUIModel(
          title: 'Ta’lim',
        ),
        AddProductUIModel(
          title: 'Avtomobilga texnik hizmat ko’rsatish',
        ),
        AddProductUIModel(
          title: 'Santexnika',
        ),
        AddProductUIModel(
          title: 'Boshqalar',
        ),
      ],
    ),

    AddCategoryUIModel(
      title: 'Elektronika va texnika',
      products: [
        AddProductUIModel(
          title: 'Komputer va ehtiyot qismlar',
        ),
        AddProductUIModel(
          title: 'Noutbook va ehtiyot  qismlar',
        ),
        AddProductUIModel(
          title: 'Planshet',
        ),
        AddProductUIModel(
          title: 'Telefon va aksseuarlar',
        ),
        AddProductUIModel(
          title: 'TV, Vedio, Audio',
        ),
        AddProductUIModel(
          title: 'O’yinlar va pristavkalar',
        ),
        AddProductUIModel(
          title: 'Fototexnika',
        ),
        AddProductUIModel(
          title: 'Orgtexnika va ofis uchun',
        ),
        AddProductUIModel(
          title: 'Komputer tovarlari',
        ),
        AddProductUIModel(
          title: 'Boshqalar',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Uy-bog’, mebel',
      products: [
        AddProductUIModel(
          title: 'Mebel',
        ),
        AddProductUIModel(
          title: 'Interier',
        ),
        AddProductUIModel(
          title: 'Idishlar va oshxona uchun',
        ),
        AddProductUIModel(
          title: 'Yoritgichlar',
        ),
        AddProductUIModel(
          title: 'Maishiy kimyoviy vositalar',
        ),
        AddProductUIModel(
          title: 'Bog’',
        ),
        AddProductUIModel(
          title: 'Boshqalar',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Qurulish mollari',
      products: [
        AddProductUIModel(
          title: 'Umumiy qurulish',
        ),
        AddProductUIModel(
          title: 'Santexnika',
        ),
        AddProductUIModel(
          title: 'Remont uchun',
        ),
        AddProductUIModel(
          title: 'Boshqalar',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Ishlab chiqarish',
    ),

    AddCategoryUIModel(
      title: 'Asbob uskunalar',
    ),

    AddCategoryUIModel(
      title: 'Shaxsiy buyumlar',
      products: [
        AddProductUIModel(
          title: 'Erkaklar kiyimi',
        ),
        AddProductUIModel(
          title: 'Ayollar kiyimi',
        ),
        AddProductUIModel(
          title: 'Bolalar kiyimi',
        ),
        AddProductUIModel(
          title: 'Boshqalar',
        ),
      ]
    ),

    AddCategoryUIModel(
      title: 'Boshqalar',
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


