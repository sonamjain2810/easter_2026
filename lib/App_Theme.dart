import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/SizeConfig.dart';

class AppTheme {
  AppTheme._();

  /*
  ---------------- LIGHT COLORS ----------------
  */

  static const Color _lightIconColor = Colors.grey;
  static const Color _lightSecondaryColor = Colors.grey;
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightDividerColor = Colors.black;
  static const Color _lightShadowColor = Colors.grey;

  static final Color _lightPrimaryColor = Colors.blueGrey.shade900;
  static final Color _lightPrimaryVariantColor = Colors.pink.shade800;
  static final Color _lightPrimaryIconColor = Colors.amber.shade700;
  static final Color _lightButtonColor = Colors.pink.shade400;
  static final Color _lightButtonSplashColor = Colors.purpleAccent.shade700;
  static final Color _lightCardColor = Colors.pink.shade700;

  /*
  ---------------- DARK COLORS ----------------
  */

  static const Color _darkPrimaryColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkDividerColor = Colors.white;
  static const Color _darkShadowColor = Colors.white70;
  static const Color _darkIconColor = Colors.white;

  static final Color _darkPrimaryVariantColor = Colors.grey.shade800;

  static const Color _darkButtonColor = Colors.red;
  static const Color _darkButtonSplashColor = Colors.blue;
  static const Color _darkCardColor = Colors.grey;

  /*
  ---------------- LIGHT THEME ----------------
  */

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: _lightPrimaryColor,

    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),

    iconTheme: const IconThemeData(color: _lightIconColor),

    primaryIconTheme: IconThemeData(color: _lightPrimaryIconColor),

    dividerColor: _lightDividerColor,

    canvasColor: _lightPrimaryColor,

    textTheme: _lightTextTheme,

    appBarTheme: AppBarTheme(
      backgroundColor: _lightPrimaryVariantColor,
      elevation: 8,
      iconTheme: IconThemeData(color: _lightPrimaryIconColor),
      titleTextStyle: GoogleFonts.lobster(
        fontSize: 2.4 * SizeConfig.textMultiplier,
        color: _lightOnPrimaryColor,
      ),
    ),

    cardTheme: CardThemeData(
      elevation: 6,
      color: _lightCardColor,
      shadowColor: _lightShadowColor,
    ),

    inputDecorationTheme: _lightInputDecorationTheme,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightButtonColor,
        foregroundColor: Colors.white,
        splashFactory: InkRipple.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: TextStyle(
          fontSize: 1.56 * SizeConfig.textMultiplier,
        ),
      ),
    ),
  );

  /*
  ---------------- DARK THEME ----------------
  */

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: _darkPrimaryColor,

    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),

    iconTheme: const IconThemeData(color: _darkIconColor),

    dividerColor: _darkDividerColor,

    canvasColor: _darkPrimaryColor,

    textTheme: _darkTextTheme,

    appBarTheme: AppBarTheme(
      backgroundColor: _darkPrimaryVariantColor,
      elevation: 8,
      iconTheme: const IconThemeData(color: _darkOnPrimaryColor),
      titleTextStyle: GoogleFonts.lobster(
        fontSize: 2.4 * SizeConfig.textMultiplier,
        color: _darkOnPrimaryColor,
      ),
    ),

    cardTheme: const CardThemeData(
      elevation: 6,
      color: _darkCardColor,
      shadowColor: _darkShadowColor,
    ),

    inputDecorationTheme: _darkInputDecorationTheme,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _darkButtonColor,
        foregroundColor: Colors.white,
        splashFactory: InkRipple.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );

  /*
  ---------------- INPUT FIELD THEMES ----------------
  */

  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _lightPrimaryVariantColor),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _lightPrimaryVariantColor),
    ),
    hintStyle: GoogleFonts.ptSans(textStyle: _lightBodyTextStyle),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  );

  static final InputDecorationTheme _darkInputDecorationTheme =
      InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _darkPrimaryVariantColor),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _darkPrimaryVariantColor),
    ),
    hintStyle: GoogleFonts.ptSans(textStyle: _darkBodyTextStyle),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  );

  /*
  ---------------- TEXT THEMES ----------------
  */

  static final TextTheme _lightTextTheme = TextTheme(
    headlineLarge:
        GoogleFonts.oswald(textStyle: _lightHeadingTextStyle),
    bodyLarge: GoogleFonts.ptSans(textStyle: _lightBodyTextStyle),
    bodyMedium: GoogleFonts.ptSans(textStyle: _lightBody2TextStyle),
    titleMedium:
        GoogleFonts.ptSans(textStyle: _lightSubtitleTextStyle),
    titleSmall:
        GoogleFonts.ptSans(textStyle: _lightSubtitle2TextStyle),
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headlineLarge:
        GoogleFonts.oswald(textStyle: _darkHeadingTextStyle),
    bodyLarge: GoogleFonts.ptSans(textStyle: _darkBodyTextStyle),
    titleMedium:
        GoogleFonts.ptSans(textStyle: _darkSubtitleTextStyle),
    titleSmall:
        GoogleFonts.ptSans(textStyle: _darkSubtitle2TextStyle),
  );

  /*
  ---------------- TEXT STYLES ----------------
  */

  static final TextStyle _lightHeadingTextStyle = TextStyle(
    fontSize: 2.68 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold,
    color: _lightOnPrimaryColor,
    letterSpacing: 1,
  );

  static final TextStyle _lightBodyTextStyle = TextStyle(
    fontSize: 2.23 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .5,
  );

  static final TextStyle _lightBody2TextStyle = TextStyle(
    fontSize: 2 * SizeConfig.textMultiplier,
    color: _lightPrimaryColor,
    letterSpacing: .5,
  );

  static final TextStyle _lightSubtitleTextStyle = TextStyle(
    fontSize: 1.79 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
  );

  static final TextStyle _lightSubtitle2TextStyle = TextStyle(
    fontSize: 1.60 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
  );

  static final TextStyle _darkHeadingTextStyle =
      _lightHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkBodyTextStyle =
      _lightBodyTextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkSubtitleTextStyle =
      _lightSubtitleTextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkSubtitle2TextStyle =
      _lightSubtitle2TextStyle.copyWith(color: _darkOnPrimaryColor);

  /*
  ---------------- UTIL ----------------
  */

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}