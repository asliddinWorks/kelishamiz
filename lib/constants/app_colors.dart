
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
    required this.backgroundLike,
    required this.black,
    required this.grey,
    required this.dividerColor,
  });

  final Color lightGrey;
  final Color iconBackgroundColor;
  final Color backgroundColor;
  final Color backgroundLike;
  final Color black;
  final Color grey;
  final Color dividerColor;

  static AppColors light = AppColors(
    lightGrey: const Color(0xffF4F4F4),
    iconBackgroundColor: const Color(0xffF9F9F9),
    backgroundColor: const Color(0xffFAFAFA),
    backgroundLike: const Color(0xff000000).withOpacity(0.24),
    black: const Color(0xff130F1E),
    grey: const Color(0xff959EA7),
    dividerColor: const Color(0xffD2D2D2),
  );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? lightGrey,
    Color? iconBackgroundColor,
    Color? backgroundColor,
    Color? backgroundLike,
    Color? black,
    Color? grey,
    Color? dividerColor,
  }) {
    return AppColors(
      lightGrey: lightGrey ?? this.lightGrey,
      iconBackgroundColor: iconBackgroundColor ?? this.iconBackgroundColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundLike: backgroundLike ?? this.backgroundLike,
      black: black ?? this.black,
      grey: grey ?? this.grey,
      dividerColor: dividerColor ?? this.dividerColor,
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
      backgroundLike: Color.lerp(backgroundLike, other.backgroundLike, t)!,
      black: Color.lerp(black, other.black, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
    );
  }
}
