
import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget padding(EdgeInsets padding) => Padding(
    padding: padding,
    child: this,
  );

}

extension WidgetListExtension on List<Widget> {
  List<Widget> paddingEach(EdgeInsets padding) => map((e) {
    return e.padding(padding);
  },).toList();
}