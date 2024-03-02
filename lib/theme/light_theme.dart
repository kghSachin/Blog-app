import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myLightTheme = ThemeData.light(
  useMaterial3: true,
).copyWith(
  snackBarTheme: SnackBarThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.white,
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
        color: Colors.white,
      )),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color.fromARGB(255, 30, 33, 38).withOpacity(0.8),
        // Colors.purple,
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
  // inputDecorationTheme: const InputDecorationTheme(
  //     filled: true,
  //     hintFadeDuration: Duration(milliseconds: 1000),
  //     focusColor: Colors.black,
  //     prefixIconColor: Colors.grey,
  //     focusedBorder:
  //         OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),

  inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none),
      filled: true,
      hintFadeDuration: Duration(milliseconds: 1000),
      focusColor: Colors.grey,
      fillColor: Color(0xFFf2f4f7),
      // fillColor: Colors.deepPurple,
      prefixIconColor: Colors.grey,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.grey,
          ))),
  scaffoldBackgroundColor: Colors.white,
);
