
import 'package:flutter/material.dart';

class AddUIModel {
  String title = '';
  List items = [];
  AddUIModel({this.title = '', this.items = const []});
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
