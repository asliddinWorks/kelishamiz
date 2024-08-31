
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/data/data_source/local/app_local_data.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/pages/category/data/models/category_each_model.dart';
import 'package:provider/provider.dart';

import '../../constants/fake_image.dart';
import '../data/models/product_model.dart';
import '../view_model/app_view_model.dart';
import 'item_top_product.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key, required this.title, this.productsCount, required this.productsEnum});

  final String title;
  final String? productsCount;
  final ProductsEnum productsEnum;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {

    final readAxisCount = context.watch<AppViewModel>();

    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: context.textTheme.titleLarge),

            Text(widget.productsCount ?? '', style: context.textTheme.titleSmall?.copyWith(
                color: context.color.grey.withOpacity(0.6)),
            ),
          ],
        ).padding(const EdgeInsets.symmetric(horizontal: 10)),

        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: readAxisCount.axisCount == 1 ? 1/.35 : 1/1.45,
            crossAxisCount: readAxisCount.axisCount,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return ItemTopProduct(
              productModel: ProductModel(
                title: 'BYD Chazor DMI',
                description: '120km Flagship Full pozitsiya faqat naxtga',
                price: '370 196 800',
                location: 'Toshkent',
                date: '02.02.22 | 13:22',
                image: FakeImages.car,
              ),
              axisCount: readAxisCount.axisCount,
            );
          },
        ),
      ],
    );
  }
}

enum ProductsEnum {
  products,
  favorite,
  home,
}

extension ProductsEnumExtension on ProductsEnum {
  bool get isProducts => this == ProductsEnum.products;
  bool get isFavorite => this == ProductsEnum.favorite;
  bool get isHome => this == ProductsEnum.home;
}
