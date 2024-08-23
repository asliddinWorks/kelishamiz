
part of 'theme.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    primaryColor: colorLightScheme.primary,
    colorScheme: colorLightScheme,
    // colorScheme: ColorScheme.fromSeed(
    //   primary: colorLightScheme.primary,
    //   seedColor: AppColors.primaryColor,
    //   secondary: AppColors.secondaryColor,
    // ),

    extensions: <ThemeExtension<dynamic>>[
      AppColors.light,
      AppTextStyle.light,
    ],

    /// Scaffold Background Color
    scaffoldBackgroundColor: AppColors.light.backgroundColor,

    /// AppBar Theme
    appBarTheme: AppBarTheme(
      // titleTextStyle: GoogleFonts.nunito(
    //     fontSize: 18,
    //     color: AppColors.primaryColor,
    //     fontWeight: FontWeight.w500,
    //   ),
    //   iconTheme: const IconThemeData(
    //     size: 28,
    //     color: AppColors.primaryColor,
    //   ),
      surfaceTintColor: AppColors.light.backgroundColor,
      backgroundColor: AppColors.light.backgroundColor,
      // foregroundColor: Colors.red
    ),

    /// ElevatedButton Theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     overlayColor: MaterialStatePropertyAll(AppColors.primaryColor),
    //     fixedSize: MaterialStatePropertyAll(Size(1.wp(context), 50.h(context))),
    //     shape: MaterialStatePropertyAll(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(5),
    //       ),
    //     ),
    //     textStyle: MaterialStatePropertyAll(GoogleFonts.nunito(
    //       fontSize: 14,
    //       fontWeight: FontWeight.w500,
    //     ),),
    //     backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
    //     foregroundColor: MaterialStatePropertyAll(AppColors.whiteColor),
    //   ),
    // ),

    /// OutlinedButton Theme
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: ButtonStyle(
    //       side: MaterialStatePropertyAll(BorderSide(color: AppColors.primaryColor)),
    //       shape: MaterialStatePropertyAll(
    //           RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(5),
    //           )
    //       ),
    //     )
    // ),

    /// Text Theme
    textTheme: TextTheme(

      titleLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.light.black,
    ),

      titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.light.black,
    ),

      titleSmall: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.light.black,
    ),

      // labelLarge: GoogleFonts.poppins(
      //   textStyle: const TextStyle(
      //     fontSize: 17,
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),
      //
      // bodyLarge: GoogleFonts.poppins(
      //   textStyle: const TextStyle(
      //     fontSize: 15,
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),
      //
      // bodyMedium: GoogleFonts.poppins(
      //   textStyle: const TextStyle(
      //     fontSize: 13,
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),
      //
      // bodySmall: GoogleFonts.poppins(
      //   textStyle: const TextStyle(
      //     fontSize: 10,
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),


    ),

    /// TextButton Theme
    // textButtonTheme: const TextButtonThemeData(
    //     style: ButtonStyle(
    //         textStyle: MaterialStatePropertyAll(
    //             TextStyle(
    //               fontSize: 14,
    //               fontWeight: FontWeight.w500,
    //             )
    //         )
    //     )
    // ),

    /// FloatingActionButton Theme
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(50),
    //   ),
    //   foregroundColor: AppColors.primaryColor,
    //   backgroundColor: AppColors.whiteColor,
    // ),

  );
}
