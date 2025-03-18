import 'package:flutter/material.dart';

ThemeData mytheme = ThemeData(
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: Color(0xff017B6B),
  ),
  listTileTheme:
      ListTileThemeData(subtitleTextStyle: TextStyle(color: Color(0xffA6AEB3))),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    indicatorColor: Colors.white,
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white,
    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    unselectedLabelStyle: TextStyle(fontSize: 17),
  ),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(size: 24, color: Colors.white),
    backgroundColor: Color(0xff017B6B),
    titleTextStyle: TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
  ),
);
