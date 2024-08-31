
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/item_top_product.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int axisCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: CustomAppBar(
          onTapGrid: () {
            axisCount = axisCount == 1 ? 2 : 1;
            setState(() {});
          },
          onTapFilter: () {},
          onChangeSearch: () {},
          onTapMenu: () {},
          onTapSearch: () {},
        ),
      ),
      body: ListView(
        children: [
          RichText(
            text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Saqlqnganlar', style: context.textTheme.titleLarge),
                  TextSpan(text: "  ", style: context.textTheme.bodyLarge),
                  TextSpan(text: "200 000 ta e'lon", style: context.textTheme.titleSmall?.copyWith(
                      color: context.color.grey.withOpacity(0.6)),
                  ),
                ]
            ),
          ).padding(const EdgeInsets.symmetric(horizontal: 10)),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: axisCount == 1 ? 1/.35 : 1/1.45,
              crossAxisCount: axisCount,
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
                axisCount: axisCount,
              );
            },
          ),
        ],
      ),
    );
  }
}
