import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myDarkTheme = ThemeData.dark(
  useMaterial3: true,
).copyWith(
  primaryColor: const Color(0xFF020617),
  scaffoldBackgroundColor: const Color(0xFF020617),
  indicatorColor: Colors.white,
  appBarTheme: const AppBarTheme(
    // elevation: 3,
    elevation: 0,
    backgroundColor: Color(0xFF020617),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xFF464F60)),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    displayMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    displaySmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    headlineLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    headlineMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    headlineSmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    // highlightColor: Color(0xFFE0E7FF),
    buttonColor: Color(0xFFE0E7FF),
    textTheme: ButtonTextTheme.primary,
  ),
  colorScheme: const ColorScheme.dark(),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      ),
      elevation: 3,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedIconTheme: const IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 30,
        color: Colors.white,
      )),
  splashColor: Colors.black.withOpacity(0.5),

  listTileTheme: const ListTileThemeData(style: ListTileStyle.list),
  // rgba(9, 15, 32, 1)
  cardColor: const Color.fromRGBO(9, 15, 32, 1),
  inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF0F172A),
      hintFadeDuration: Duration(milliseconds: 1000),
      focusColor: Colors.white,
      prefixIconColor: Colors.grey,
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
  // scaffoldBackgroundColor: const Color(0xFF0F172A),
);

ThemeData myLightTheme = ThemeData.light(
  useMaterial3: true,
).copyWith(
  snackBarTheme: SnackBarThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 3,
    backgroundColor: Color(0xFFC5CFDB),
  ),
  cardColor: const Color(0xFFf2f4f7),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(
          color: Color(0xFFC5CFDB),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
        fontWeight: FontWeight.w500,
      )),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xFF464F60).withOpacity(0.8),
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    headlineLarge: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    textTheme: ButtonTextTheme.accent,
  ),
  indicatorColor: Colors.black,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showSelectedLabels: false,
    selectedLabelStyle: TextStyle(
      color: Colors.white,
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    ),
    elevation: 2,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    secondary: const Color(0xFF312E81),
  ),
  inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      hintFadeDuration: Duration(milliseconds: 1000),
      focusColor: Colors.black,
      prefixIconColor: Colors.grey,
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
  scaffoldBackgroundColor: Colors.white,
);
