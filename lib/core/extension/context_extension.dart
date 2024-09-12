
import 'package:flutter/material.dart';
import 'package:kelishamiz/constants/app_text_style.dart';
import 'package:kelishamiz/constants/app_text_style.dart';

import '../../constants/app_colors.dart';

extension ContextExtension on BuildContext {

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;
  AppColors get color => theme.extension<AppColors>()!;

  TextTheme get textTheme => theme.textTheme;
  AppTextStyle get textStyle => theme.extension<AppTextStyle>()!;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  // bool get isKeyboardOpen => View.of(this).viewInsets.bottom > 0;
  bool get isKeyboardOpen => MediaQuery.of(this).viewInsets.bottom > 0;
  void get unFocus => FocusManager.instance.primaryFocus!.unfocus();
}