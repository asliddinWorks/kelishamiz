
import 'package:flutter/material.dart';

const colorLightScheme = ColorScheme.light(
  primary: Color(0xff1D828E),
  // surface: Color(0xFFF7F9FC),
  // onSurface: Color(0xFF020000),
  secondary: Color(0xffFEAD5E),
  // onSecondary: Color(0xFF020000),
  error: Color(0xFFD93F2F),
  // surfaceVariant: Color(0xFFF5F5F5),
  // background: Color(0xFFF8F8FA),
  // onBackground: Color(0xFF020000),
);

class AppColors extends ThemeExtension<AppColors> {

  AppColors({
    required this.lightGrey,
    required this.iconBackgroundColor,
    required this.backgroundColor,
  });

  final Color lightGrey;
  final Color iconBackgroundColor;
  final Color backgroundColor;

  static AppColors light = AppColors(
    lightGrey: const Color(0xffF4F4F4),
    iconBackgroundColor: const Color(0xffF9F9F9),
    backgroundColor: const Color(0xffFAFAFA),
  );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? lightGrey,
    Color? iconBackgroundColor,
    Color? backgroundColor,
  }) {
    return AppColors(
      lightGrey: lightGrey ?? this.lightGrey,
      iconBackgroundColor: iconBackgroundColor ?? this.iconBackgroundColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      iconBackgroundColor: Color.lerp(iconBackgroundColor, other.iconBackgroundColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
