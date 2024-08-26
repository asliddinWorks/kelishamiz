
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelishamiz/constants/app_icons.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/widgets/item_category_each.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/item_category_page.dart';
import '../view_model/category_view_model.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required this.id});

  final int id;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  void initState() {
    context.read<CategoryViewModel>().initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final read = context.read<CategoryViewModel>();
    final watch = context.watch<CategoryViewModel>();

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
      body: Row(
        children: [
          SizedBox(
            width: 103,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisSpacing: 5),
              itemCount: read.mainCategory.length,
              itemBuilder: (context, index) {
                return ItemCategoryPage(
                  onTap: (){
                    read.onTapMainCategory(index);
                  },
                  title: read.mainCategory[index],
                  icon: read.mainCategoryIcons[index],
                  isActive: watch.mainCategorySelection[index],
                );
              },
            ),
          ).padding(const EdgeInsets.symmetric(horizontal: 10)),
          // AspectRatio(
          //   aspectRatio: 1/2.65,
          //   child: GridView.count(
          //     padding: const EdgeInsets.only(right: 10),
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 10,
          //     // children: [
          //     //   ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportCar), title: 'Yengil avtomobil'),
          //     //   ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportTruck), title: "Yuk tashish va maxsus transport"),
          //     //   ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportMotorcycle), title: 'Mototsikl va mototexnika'),
          //     //   ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportAccessory), title: 'Ehtiyot qismlar va aksesurarlar'),
          //     //   ItemCategoryEach(icon: SvgPicture.asset(AppIcons.icTransportOthers), title: "Boshqalari"),
          //     // ],
          //   ),
          // ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5),
              itemCount: read.categoryLists[read.selectedMainIndex].length,
              itemBuilder: (context, index) {
                return ItemCategoryEach(
                  categoryEachModel: read.categoryLists[read.selectedMainIndex][index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
