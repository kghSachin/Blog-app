import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myDarkTheme = ThemeData.dark(
  useMaterial3: true,
).copyWith(
    scaffoldBackgroundColor: const Color(0xFF020617),
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
    inputDecorationTheme: InputDecorationTheme(
        focusColor: Colors.white,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)))

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
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    textTheme: ButtonTextTheme.accent,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    secondary: const Color(0xFF312E81),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
);
