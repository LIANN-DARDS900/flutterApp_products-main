import 'package:flutter/material.dart';

class MyAppTheme{
  static List<ThemeData> themes=[
    ThemeData(
        primaryColor: Colors.purple,
        appBarTheme: AppBarTheme(color: Colors.purple),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 22),
          bodyMedium: TextStyle(fontSize: 20),
          bodySmall: TextStyle(fontSize: 18)
        ),
        iconTheme: IconThemeData(
          size: 30,
        )
    ),
  ];
}