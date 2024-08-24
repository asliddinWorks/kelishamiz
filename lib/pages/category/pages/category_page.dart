
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/item_category_each.dart';

import '../../../core/widgets/item_category_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required this.id});

  final int id;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Kategoriya', style: context.textTheme.titleLarge,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: context.color.categoryItem,
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(AppIcons.icCategoryFilter),
                ),
                8.wGap,
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: context.color.categoryItem,
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(AppIcons.icCategoryGrid),
                ),
              ],
            )
          ],
        ),
      ),
      body: Expanded(
        child: Row(
          children: [
            SizedBox(
              width: 103,
              child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisCount: 1,
                children: [
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icCar), title: 'Transport'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icCategoryHome), title: "Ko'chmas mulk"),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icService), title: 'Ish va xizmatlar'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icElectronics), title: 'Elektronika va texnika'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icFurniture), title: "Uy-bog', mebel "),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icConstructions), title: 'Qurulish mollari'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icProduction), title: 'Ishlab chiqarish'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icEquipment), title: 'Asbob uskunalar'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icItems), title: 'Shaxsiy buyumlar'),
                  ItemCategoryPage(icon: SvgPicture.asset(AppIcons.icOthers), title: 'boshqalar'),
                ],
              ),
            ).padding(const EdgeInsets.all(10)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportCar), title: 'Yengil avtomobil'),
                  ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportTruck), title: "Yuk tashish va maxsus transport"),
                  ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportMotorcycle), title: 'Mototsikl va mototexnika'),
                  ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportAccessory), title: 'Ehtiyot qismlar va aksesurarlar'),
                  ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportOthers), title: "Boshqalari"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
