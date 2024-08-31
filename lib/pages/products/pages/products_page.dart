
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/data/data_source/local/app_local_data.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/view_model/app_view_model.dart';
import 'package:kelishamiz/pages/category/data/models/category_each_model.dart';
import 'package:provider/provider.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/item_top_product.dart';
import '../../../core/widgets/products_view.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, required this.categoryEachModel,});

  final CategoryEachModel categoryEachModel;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {

    final readAxisCount = context.read<AppViewModel>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: CustomAppBar(
          onTapGrid: () async {
            await readAxisCount.saveGridAxisCount();
          },
          onTapFilter: () {},
          onChangeSearch: () {},
          onTapMenu: () {},
          onTapSearch: () {},
        ),
      ),
      body: ProductsView(
        title: widget.categoryEachModel.title,
        productsCount: '200 000 ta e’lon',
        productsEnum: ProductsEnum.products,
      ),
    );
  }
}
