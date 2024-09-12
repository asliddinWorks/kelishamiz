
import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/app_button.dart';
import 'package:kelishamiz/core/widgets/drop_down_with_title.dart';
import 'package:kelishamiz/core/widgets/text_field_with_title.dart';
import 'package:kelishamiz/pages/add/pages/widgets/add_image.dart';
import 'package:kelishamiz/pages/add/pages/widgets/price_type_button.dart';
import 'package:provider/provider.dart';

import '../data/models/add_ui_model.dart';
import '../view_model/add_view_model.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}


class RegionModel {
  String name = '';
  List<String> provinces = [];
  RegionModel({required this.name, required this.provinces});
}

class _AddPageState extends State<AddPage> {

  MenuController menuController = MenuController();
  String menuValue = 'Mening';

  List<RegionModel> regions = [
    RegionModel(
      name: 'Andijon',
      provinces: [
        "Andijon tumani",
        "Andijon shahar",
        "Asaka tumani",
        "Baliqchi tumani",
        "Bo'z tumani",
        "Izboskan tumani",
        "Jalaquduq tumani",
        "Marhamat tumani",
        "Oltin tumani",
        "Shahrihon tumani",
        "Xo'jaobod tumani",
        "Xonabad tumani",
      ],
    ),

    RegionModel(
      name: 'Buxoro',
      provinces: [
        "Buxoro tumani",
        "Buxoro shahar",
        "Gijduvon tumani",
        "Jondor tumani",
        "Kogon tumani",
        "Qorako‘l tumani",
        "Romitan tumani",
        "Shofirkon tumani",
        "Vobkent tumani",
        "Peshku tumani",
      ],
    ),
    //
    RegionModel(
      name: "Farg'ona",
      provinces: [
        "Farg'ona tumani",
        "Farg'ona shahar",
        "Bag'dod tumani",
        "Beshariq tumani",
        "Dang'ara tumani",
        "Farg'ona tumani",
        "Qo'qon shahar",
        "Quva tumani",
        "Rishton tumani",
        "Oltiariq tumani",
        "Uchko'prik tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Jizzax',
      provinces: [
        "Jizzax tumani",
        "Jizzax shahar",
        "Arnasoy tumani",
        "Baxmal tumani",
        "Do'stlik tumani",
        "Gallaorol tumani",
        "Jizzax tumani",
        "Mirzachol tumani",
        "Forish tumani",
        "Yangiobod tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Namangan',
      provinces: [
        "Namangan shahar",
        "Chortoq tumani",
        "Chust tumani",
        "Kosonsoy tumani",
        "Namangan tumani",
        "Norin tumani",
        "Pop tumani",
        "To'raqo'rg'on tumani",
        "Uychi tumani",
      ],
    ),
    //
    RegionModel(
      name: 'Navoiy',
      provinces: [
        "Navoiy tumani",
        "Navoiy shahar",
        "Karmana tumani",
        "Navbahor tumani",
        "Qiziltepa tumani",
        "Tomdi tumani",
        "Uchkuduk tumani",
        "Xatirchi tumani",
        "Yangirob tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Qashqadaryo',
      provinces: [
        "Qashqadaryo tumani",
        "Qashqadaryo shahar",
        "Bag'dod tumani",
        "Chiroqchi tumani",
        "Dehqonobod tumani",
        "G'uzor tumani",
        "Kitob tumani",
        "Mirishkor tumani",
        "Muborak tumani",
        "Nishon tumani",
        "Shahrisabz tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Samarqand',
      provinces: [
        "Samarqand tumani",
        "Samarqand shahar",
        "Bulung'ur tumani",
        "Jomboy tumani",
        "Kattakurgan tumani",
        "Ishtikhan tumani",
        "Oqdaryo tumani",
        "Payariq tumani",
        "Pastdarg'om tumani",
        "Samarkand tumani",
        "Urgut tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Sirdaryo',
      provinces: [
        "Sirdaryo tumani",
        "Sirdaryo shahar",
        "Gulistan tumani",
        "Boyovut tumani",
        "Sayxunobod tumani",
        "Mirzaobod tumani",
        "Yangiyer tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Surxondaryo',
      provinces: [
        "Surxondaryo tumani",
        "Termiz shahar",
        "Angor tumani",
        "Denov tumani",
        "Boysun tumani",
        "Jarqo'rg'on tumani",
        "Muzrobod tumani",
        "Oltinsoy tumani",
        "Sariosiyo tumani",
        "Shurchi tumani",
        "Surxondaryo tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Toshkent',
      provinces: [
        "Toshkent tumani",
        "Toshkent shahar",
        "Angren tumani",
        "Bekabad tumani",
        "Bo'zsuv tumani",
        "Chirchiq tumani",
        "O'rtachirchiq tumani",
        "Pskent tumani",
        "Tashkent tumani",
        "Ohangaron tumani",

      ],
    ),
    //
    RegionModel(
      name: 'Xorazm',
      provinces: [
        "Xorazm tumani",
        "Urganch shahar",
        "Bog'ot tumani",
        "Gurlan tumani",
        "Xiva tumani",
        "Shovot tumani",
        "Yangibozor tumani",
        "Xazorasp"
      ],
    ),
    //
    RegionModel(
      name: "Qoraqalpog'iston",
      provinces: [
        "Amudaryo tumani",
        "Beruniy tumani",
        "Beyneu tumani",
        "Ellikqal'a tumani",
        "Jumurt tumani",
        "Kogon tumani",
        "Muzrabot tumani",
        "Nukus tumani",
        "Shumanay tumani",
        "Taxtakupir tumani",
        "Turtkul tumani",
        "Uchkuduk tumani",
        "Xo'jayli tumani",
      ],
    ),

  ];

  @override
  Widget build(BuildContext context) {

    final read = context.read<AddViewModel>();
    final watch = context.watch<AddViewModel>();

    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.only(bottom: 15),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    watch.selectedAddCategoryUIModel.title,
                    style: context.textTheme.titleLarge,
                  ),
                  TextFieldWithTitle(
                    title: "Ism to'liq",
                  ),

                  const TextFieldWithTitle(
                    title: "E-mail",
                  ),
                  const TextFieldWithTitle(
                    title: "Telefon raqam",
                    hintText: '+998 (__) __ __ __',
                    mask: '+998 ## ### ## ##',
                    keyboardType: TextInputType.phone,
                  ),




                  MenuBar(
                    style: const MenuStyle(
                      elevation: WidgetStatePropertyAll(10),
                      padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      fixedSize: null,
                      maximumSize: null,
                    ),
                    children: [
                      SubmenuButton(
                        controller: menuController,
                        menuChildren: regions.map((region) {
                          return SubmenuButton(
                            menuChildren: region.provinces.map((e) {
                              return TextButton(
                                onPressed: (){
                                  print(region.name);
                                  print(e);
                                  menuController.close();
                                },
                                child: Text(e),
                              );
                            }).toList(),
                            child: Text(region.name),
                          );
                        }).toList(),
                        child: Text("ffffff"),
                      ),
                    ],
                  ),




                  DropDownWithTitle(
                    onChanged: (value) {
                      read.onChooseCategory(value);
                    },
                    title: 'Kategoriya',
                    dropdownValue: watch.selectedAddCategoryUIModel.title,
                    items: read.addCategoryUIModelList.map((e) {
                      return e.title;
                    },).toList(),
                  ),
                ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
              ),

              /// Select product
              if (watch.selectedAddCategoryUIModel.products.isNotEmpty)
                DropDownWithTitle(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  onChanged: (value) {
                    read.onChooseProduct(value);
                  },
                  title: 'Tovar turi',
                  items: read.selectedAddCategoryUIModel.products.map((e) {
                    return e.title;
                  }).toList(),
                  dropdownValue: watch.selectedAddProductUIModel!.title,
                ),

              /// maxsus itemlar

              if (watch.selectedAddProductUIModel != null)
                Column(
                  children: read.selectedAddProductUIModel!.items.map((e) {
                    if (e is DropdownModel) {
                      return DropDownWithTitle(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        title: e.title,
                        items: e.items,
                        dropdownValue: e.value,
                        onChanged: (value) {
                          setState(() {
                            e.onChanged(value ?? '');
                          });
                        },
                      );
                    }
                    if (e is TextFieldModel) {
                      return TextFieldWithTitle(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        controller: e.controller,
                        title: e.title,
                        hintText: e.hintText,
                      );
                    }
                    return const SizedBox.shrink();
                  },).toList(),
                ),


              if (watch.isCategorySelect)
                Column(
                  children: [
                    const TextFieldWithTitle(
                      title: "E'lon nomi",
                      maxLines: 5,
                    ),
                    const TextFieldWithTitle(
                      title: "Tavsif(Tavsigfa to’liqroq ma’lumot yozing)",
                      maxLines: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Narxni kelishish',
                          style: context.textTheme.bodyLarge,
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: context.colorScheme.primary,
                          value: true,
                          thumbIcon: WidgetStateProperty.all(Icon(
                            Icons.pause,
                            color: context.color.lightGrey,
                          )),
                          onChanged: (value) {

                          },),
                      ],
                    ),
                    PriceTypeButton(
                      onPressed: (index) {
                        print(index);
                      },
                    ),

                    const TextFieldWithTitle(
                      title: 'Qiymati',
                      hintText: 'Qiymatini kiriting',
                    ),

                    AddImage(),

                    AppButton(
                      onPressed: (){},
                      text: "E'lon yuklash",
                      height: 50,
                      fillTextStyle: context.textTheme.titleMedium!.copyWith(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ].paddingEach(const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                ),
            ],
          )
      ),

    );
  }
}

