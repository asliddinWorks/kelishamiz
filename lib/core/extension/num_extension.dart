
import 'package:flutter/material.dart';

extension NumExtension on num {

  double h(BuildContext context) => this / 1000 * MediaQuery.sizeOf(context).height;
  double w(BuildContext context) => this / 1000 * MediaQuery.sizeOf(context).width;

  double hp(BuildContext context) => MediaQuery.sizeOf(context).height * this;
  double wp(BuildContext context) => MediaQuery.sizeOf(context).width * this;

  Widget get hGap => SizedBox(height: this / 1);
  Widget get wGap => SizedBox(width: this / 1);

}