import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightTheme =ThemeData(
  fontFamily: "FuturaReg",
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 0,
    titleSpacing: 20,
    color: Colors.white,
    systemOverlayStyle:SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.cyan,
    iconSize: 25,
    foregroundColor: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.black,
    elevation: 20,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
  ),
  textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.black54,
      )
  ),
);

ThemeData darkTheme =ThemeData(
  primarySwatch: Colors.cyan,
  scaffoldBackgroundColor: Colors.grey,
  appBarTheme: AppBarTheme(
    elevation: 0,
    titleSpacing: 20,
    systemOverlayStyle:SystemUiOverlayStyle.dark,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.cyan,
    iconSize: 25,
    foregroundColor: Colors.black,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white,
    elevation: 20,
    backgroundColor: Colors.cyan,
    type: BottomNavigationBarType.fixed,
  ),
  textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      )
  ),
);

