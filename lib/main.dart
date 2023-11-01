import 'package:first/loginpage.dart';
import 'package:first/utiles/routes.dart';
import 'package:first/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: loginpage(),
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
     debugShowCheckedModeBanner : false,
      routes: {
      routes.loginRoute: (context) => loginpage(),
        routes.homeRoute: (context) => homepage()
      },

    );
  }
}



