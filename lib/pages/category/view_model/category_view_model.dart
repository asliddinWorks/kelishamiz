

import 'package:flutter/material.dart';

import '../../../constants/app_icons.dart';
import '../data/models/category_each_model.dart';

class CategoryViewModel extends ChangeNotifier {
  List<bool> mainCategorySelection = [];

  List<String> mainCategory = [
    'Transport',
    "Ko'chmas mulk",
    'Ish va xizmatlar',
    'Elektronika va texnika',
    "Uy-bog', mebel ",
    'Qurulish mollari',
    'Ishlab chiqarish',
    'Asbob uskunalar',
    'Shaxsiy buyumlar',
    'boshqalar',
  ];
  List<String> mainCategoryIcons = [
    AppIcons.icCar,
    AppIcons.icCategoryHome,
    AppIcons.icService,
    AppIcons.icElectronics,
    AppIcons.icFurniture,
    AppIcons.icConstructions,
    AppIcons.icProduction,
    AppIcons.icEquipment,
    AppIcons.icItems,
    AppIcons.icOthers
  ];


  List<CategoryEachModel> transportItem = [
    CategoryEachModel(
      icon: AppIcons.icTransportCar,
      title: 'Yengil avtomobil',
    ),
    CategoryEachModel(
      icon: AppIcons.icTransportTruck,
      title: "Yuk tashish va maxsus transport",
    ),
    CategoryEachModel(
      icon: AppIcons.icTransportMotorcycle,
      title: 'Mototsikl va mototexnika',
    ),
    CategoryEachModel(
      icon: AppIcons.icTransportAccessory,
      title: 'Ehtiyot qismlar va aksesurarlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icTransportOthers,
      title: "Boshqalari",
    ),
  ];
  List<CategoryEachModel> realEstateItem = [
    CategoryEachModel(
      icon: AppIcons.icEstateApartment,
      title: 'Kvartira',
    ),
     CategoryEachModel(
      icon: AppIcons.icEstateHouse,
      title: 'Hovli uy-joy',
    ),
    CategoryEachModel(
      icon: AppIcons.icEstateEarth,
      title: 'Yer, uchaska',
    ),

    CategoryEachModel(
      icon: AppIcons.icEstateOther,
      title: "Boshqalari",
    ),
  ];
  List<CategoryEachModel> serviceItem = [
    CategoryEachModel(
      icon: AppIcons.icServiceConstruction,
      title: 'Qurulish va remont',
    ),
    CategoryEachModel(
      icon: AppIcons.icServiceDailyChores,
      title: 'Kundalik ishlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icServiceIt,
      title: 'It sohasida xizmatlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icServiceTraining,
      title: "Ta'lim",
    ),
    CategoryEachModel(
      icon: AppIcons.icServiceCarService,
      title: 'Avtomobilga texnik hizmat ko’rsatish',
    ),
    CategoryEachModel(
      icon: AppIcons.icServicePlumbing,
      title: 'Santexnika',
    ),
    CategoryEachModel(
      icon: AppIcons.icServiceOther,
      title: "Boshqalar",
    ),
  ];
  List<CategoryEachModel> electricityItem = [
    CategoryEachModel(
      icon: AppIcons.icElectronicsComputerParts,
      title: 'Komputer va ehtiyot qismlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsLaptop,
      title: 'Noutbook va ehtiyot  qismlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsTablet,
      title: 'Planshet',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsHeadphone,
      title: 'Telefon va aksseuarlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsTv,
      title: 'TV, Vedio, Audio',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsGames,
      title: 'O’yinlar va pristavkalar',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsPhoto,
      title: 'Fototexnika',
    ),CategoryEachModel(
      icon: AppIcons.icElectronicsOffice,
      title: 'Orgtexnika va ofis uchun',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsComputer,
      title: 'Komputer tovarlari',
    ),
    CategoryEachModel(
      icon: AppIcons.icElectronicsOther,
      title: 'Boshqalar',
    ),



  ];
  List<CategoryEachModel> furnitureItem = [
    CategoryEachModel(
      icon: AppIcons.icGardenFurniture,
      title: 'Mebel',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenInternet,
      title: 'Internet',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenKitchen,
      title: 'Idishlar va oshxona uchun',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenLight,
      title: 'Yoritgichlar',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenChemical,
      title: 'Maishiy kimyoviy vositalar',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenGarden,
      title: 'Bog’',
    ),
    CategoryEachModel(
      icon: AppIcons.icGardenOther,
      title: 'Boshqalar',
    ),
  ];
  List<CategoryEachModel> constructionItem = [
    CategoryEachModel(
      icon: AppIcons.icConstructionCommon,
      title: 'Umumiy qurulish',
    ),
    CategoryEachModel(
      icon: AppIcons.icConstructionPlumbing,
      title: 'Santexnika',
    ),
    CategoryEachModel(
      icon: AppIcons.icConstructionRepair,
      title: 'Remont uchun',
    ),
    CategoryEachModel(
      icon: AppIcons.icConstructionOther,
      title: 'Boshqalar',
    ),
  ];
  List<CategoryEachModel> productItem = [];
  List<CategoryEachModel> equipmentItem = [];
  List<CategoryEachModel> personalItem = [
    CategoryEachModel(
      icon: AppIcons.icPersonalMen,
      title: 'Erkaklar kiyimi',
    ),
    CategoryEachModel(
      icon: AppIcons.icPersonalWomen,
      title: 'Ayollar kiyimi',
    ),
    CategoryEachModel(
      icon: AppIcons.icPersonalChildren,
      title: 'Bolalar kiyimi',
    ),
    CategoryEachModel(
      icon: AppIcons.icPersonalOther,
      title: 'Boshqalar',
    ),
  ];
  List<CategoryEachModel> otherItem = [];

  List<List<CategoryEachModel>> categoryLists = [];

  void initialize() {
    mainCategorySelection = List.generate(10, (index) => false);
    mainCategorySelection.first = true;

    categoryLists.clear();
    categoryLists.addAll([
      transportItem,
      realEstateItem,
      serviceItem,
      electricityItem,
      furnitureItem,
      constructionItem,
      productItem,
      equipmentItem,
      personalItem,
      otherItem
    ]);
    notifyListeners();
  }

  int selectedMainIndex = 0;
  void onTapMainCategory(int index) {
    selectedMainIndex = index;
    mainCategorySelection = List.generate(10, (index) => false);
    mainCategorySelection[index] = true;
    notifyListeners();
  }
}