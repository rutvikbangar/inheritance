import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme:  AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black,fontSize: 20.00),
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black,),

    )
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      );




}