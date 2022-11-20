import 'package:flutter/material.dart';

class ProjectTheme {
  ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.white),
        color: Colors.black,
        toolbarTextStyle: const TextTheme(headline2: TextStyle(color: Colors.white, fontSize: 20)).bodyText2,
        titleTextStyle: const TextTheme(headline2: TextStyle(color: Colors.white, fontSize: 20)).headline6),
  );
  ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.grey, size: 16),
        color: Colors.white,
        toolbarTextStyle: const TextTheme(headline2: TextStyle(color: Colors.grey, fontSize: 20)).bodyText2,
        titleTextStyle: const TextTheme(headline2: TextStyle(color: Colors.grey, fontSize: 20)).headline6),
  );
}
