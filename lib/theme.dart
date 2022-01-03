import 'package:app_shop/constanstes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme(){
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: appBarTheme(),
        textTheme: textThemeApp(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: TextColor),
              gapPadding: 10,
            );
  return InputDecorationTheme(
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
          );
}

TextTheme textThemeApp() {
  return TextTheme(
        headline6: TextStyle(color: TextColor, fontSize: 18),
        bodyText1: TextStyle(color: TextColor),
        bodyText2: TextStyle(color: TextColor),
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        color: whiteColor,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        iconTheme: IconThemeData(
          color: BlackColor,
        ), 
      );
}