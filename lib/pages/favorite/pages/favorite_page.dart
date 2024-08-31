
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/widget_extension.dart';
import 'package:kelishamiz/core/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/data_source/local/app_local_data.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/item_top_product.dart';
import '../../../core/widgets/products_view.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

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
      body: const ProductsView(
        title: 'Saqlanganlar',
        productsEnum: ProductsEnum.products,
      ),
    );
  }
}
