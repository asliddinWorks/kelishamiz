
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/extension/num_extension.dart';
import 'package:kelishamiz/pages/search/pages/widgets/searchItem.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/item_top_product.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isKeyboardOpen = false;
  late StreamSubscription<bool> subscription;
  @override
  void initState() {
    subscription = KeyboardVisibilityController().onChange.listen((visible) {
      setState(() {
        isKeyboardOpen = visible;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 30,
        title:  const TextField(
          autofocus: true,
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            30.hGap,
            isKeyboardOpen
                ?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Yaqinda qidirilganlar', style: context.textTheme.titleLarge!.copyWith(fontSize: 17),),
                20.hGap,
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    childAspectRatio: 1/.17,
                    crossAxisCount: 1,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return const SearchItem();
                  },
                ),
              ],
            ) :
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1/1.47, //1/.35,
                crossAxisCount: 2,
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
