
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/pages/category/data/models/category_each_model.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/item_top_product.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, required this.categoryEachModel,});

  final CategoryEachModel categoryEachModel;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

  int axisCount = 1;

  @override
  void initState() {
    super.initState();
  }

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
                TextSpan(text: widget.categoryEachModel.title, style: context.textTheme.titleLarge),
                TextSpan(text: "  ", style: context.textTheme.bodyLarge),
                TextSpan(text: "200 000 ta e'lon", style: context.textTheme.titleMedium?.copyWith(
                    color: context.color.grey.withOpacity(0.6)),
                ),
              ]
            ),
          ).padding(EdgeInsets.symmetric(horizontal: 10)),
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
