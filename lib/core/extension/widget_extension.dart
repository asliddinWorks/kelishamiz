
import 'package:flutter/material.dart';

extension NumExtension on Widget {
  Widget padding(EdgeInsets padding) => Padding(
    padding: padding,
    child: this,
  );
}