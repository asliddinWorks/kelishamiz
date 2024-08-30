import 'package:flutter/cupertino.dart';

import '../../../constants/fake_image.dart';
import '../../../core/data/models/product_model.dart';
import '../../../core/widgets/item_top_product.dart';

class ProductViewModel extends ChangeNotifier {
  List<bool> mainProductSelection = [];

  List lightCar = [
    ItemTopProduct(
      productModel: ProductModel(
        title: 'BYD Chazor DMI',
        description: '120km Flagship Full pozitsiya faqat naxtga',
        price: '370 196 800',
        location: 'Toshkent',
        date: '02.02.22 | 13:22',
        image: FakeImages.car,
      ),
      // axisCount: axisCount,
      // eachName: 'Yengil avtomobil',
    ),
    ItemTopProduct(
      productModel: ProductModel(
        title: 'BYD Chazor DMI',
        description: '120km Flagship Full pozitsiya faqat naxtga',
        price: '370 196 800',
        location: 'Toshkent',
        date: '02.02.22 | 13:22',
        image: FakeImages.car,
      ),
    ),
  ];
  List<ProductModel> shipping = [];
  List<ProductModel> motorbike = [];
  List<ProductModel> accessories = [];
  List<ProductModel> other = [];

  List<List<ProductModel>> productLists = [];

  void initialize(int id) {
    productLists.clear();
    productLists.addAll([
      shipping,
      motorbike,
      accessories,
      other
    ]);
    notifyListeners();
  }
}
