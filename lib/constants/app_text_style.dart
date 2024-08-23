
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelishamiz/constants/app_colors.dart';

class AppTextStyle extends ThemeExtension<AppTextStyle> {

  AppTextStyle({
    required this.categoryCaptionSmall,
    required this.categoryCaptionMedium,
    required this.productTitle,
    required this.productDescription,
    required this.price,
    required this.productDate,
    required this.navigationBar,
    required this.buttonLargeActive,
    required this.buttonLargeNotActive,
    required this.buttonMediumActive,
    required this.buttonMediumNotActive,
    required this.buttonLargeGrey,
    required this.hintStyle,
  });

  final TextStyle categoryCaptionSmall;
  final TextStyle categoryCaptionMedium;
  final TextStyle productTitle;
  final TextStyle productDescription;
  final TextStyle price;
  final TextStyle productDate;
  final TextStyle navigationBar;
  final TextStyle buttonLargeActive;
  final TextStyle buttonLargeNotActive;
  final TextStyle buttonMediumActive;
  final TextStyle buttonMediumNotActive;
  final TextStyle buttonLargeGrey;
  final TextStyle hintStyle;


  static AppTextStyle light = AppTextStyle(
    categoryCaptionSmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.light.black,
    ),
    categoryCaptionMedium: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.light.black,
    ),
    productTitle: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.light.black,
    ),
    productDescription: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.light.black,
    ),
    price: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: AppColors.light.black,
    ),
    productDate: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: AppColors.light.grey,
    ),
    navigationBar: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: AppColors.light.black,
    ),
    buttonLargeActive: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    buttonLargeNotActive: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    buttonMediumActive: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    buttonMediumNotActive: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    buttonLargeGrey: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.light.grey,
    ),

    hintStyle: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.light.grey,
    ),



  );

  @override
  ThemeExtension<AppTextStyle> copyWith({
    TextStyle? titleStyle,
    TextStyle? categoryCaptionSmall,
    TextStyle? categoryCaptionMedium,
    TextStyle? productTitle,
    TextStyle? productDescription,
    TextStyle? price,
    TextStyle? productDate,
    TextStyle? navigationBar,
    TextStyle? buttonLargeActive,
    TextStyle? buttonLargeNotActive,
    TextStyle? buttonMediumActive,
    TextStyle? buttonMediumNotActive,
    TextStyle? buttonLargeGrey,
    TextStyle? hintStyle,
  }) {
    return AppTextStyle(
        categoryCaptionSmall: categoryCaptionSmall ?? this.categoryCaptionSmall,
        categoryCaptionMedium: categoryCaptionMedium ?? this.categoryCaptionMedium,
        productTitle: productTitle ?? this.productTitle,
        productDescription: productDescription ?? this.productDescription,
        price: price ?? this.price,
        productDate: productDate ?? this.productDate,
        navigationBar: navigationBar ?? this.navigationBar,
        buttonLargeActive: buttonLargeActive ?? this.buttonLargeActive,
        buttonLargeNotActive: buttonLargeNotActive ?? this.buttonLargeNotActive,
        buttonMediumActive: buttonMediumActive ?? this.buttonMediumActive,
        buttonMediumNotActive: buttonMediumNotActive ?? this.buttonMediumNotActive,
        buttonLargeGrey: buttonLargeGrey ?? this.buttonLargeGrey,
        hintStyle: hintStyle ?? this.hintStyle,
      // titleLarge: titleStyle ?? this.titleLarge,
    );
  }

  @override
  ThemeExtension<AppTextStyle> lerp(covariant ThemeExtension<AppTextStyle>? other, double t) {
    if (other is! AppTextStyle) {
      return this;
    }
    return AppTextStyle(
        categoryCaptionSmall: TextStyle.lerp(categoryCaptionSmall, other.categoryCaptionSmall, t)!,
        categoryCaptionMedium: TextStyle.lerp(categoryCaptionMedium, other.categoryCaptionMedium, t)!,
        productTitle: TextStyle.lerp(productTitle, other.productTitle, t)!,
        productDescription: TextStyle.lerp(productDescription, other.productDescription, t)!,
        price: TextStyle.lerp(price, other.price, t)!,
        productDate: TextStyle.lerp(productDate, other.productDate, t)!,
        navigationBar: TextStyle.lerp(navigationBar, other.navigationBar, t)!,
        buttonLargeActive: TextStyle.lerp(buttonLargeActive, other.buttonLargeActive, t)!,
        buttonLargeNotActive: TextStyle.lerp(buttonLargeNotActive, other.buttonLargeNotActive, t)!,
        buttonMediumActive: TextStyle.lerp(buttonMediumActive, other.buttonMediumActive, t)!,
        buttonMediumNotActive: TextStyle.lerp(buttonMediumNotActive, other.buttonMediumNotActive, t)!,
        buttonLargeGrey: TextStyle.lerp(buttonLargeGrey, other.buttonLargeGrey, t)!,
        hintStyle: TextStyle.lerp(hintStyle, other.hintStyle, t)!,
    );
  }
}
