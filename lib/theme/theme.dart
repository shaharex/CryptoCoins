import 'package:flutter/material.dart';

final themeDark = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 29, 29, 29),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
  colorSchemeSeed: Colors.yellow,
  dividerColor: Colors.white10,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
    labelSmall: TextStyle(
        color: Color.fromARGB(190, 255, 255, 255),
        fontSize: 14,
        fontWeight: FontWeight.w700),
  ),
);
