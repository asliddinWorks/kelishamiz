
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


}