
import 'package:flutter/material.dart';

class AddCategoryUIModel {
  String title = '';
  String selectedProductName = '';
  List products = [];
  AddCategoryUIModel({this.title = '', this.products = const [], this.selectedProductName = ''});
}

class AddProductUIModel {
  String title = '';
  List items = [];
  AddProductUIModel({this.title = '', this.items = const []});
}

class TextFieldModel {
  TextEditingController controller = TextEditingController();
  String title;
  String hintText;
  TextFieldModel({this.title = '', this.hintText = '', required this.controller});
}

class DropdownModel {
  String title;
  String value;
  List<String> items;
  void onChanged(String value) {
    this.value = value;
  }

  DropdownModel({this.title = '', this.value = '', this.items = const []});
}
