import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData  _mediaQueryData = const MediaQueryData();
   static double screenWidth = _mediaQueryData.size.width;
  static double screenHeight = _mediaQueryData.size.height;
  static Orientation? orientation = _mediaQueryData.orientation;
  static double? defaultSize;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight){
  double screenheight = SizeConfig.screenHeight;
  return (inputHeight / 812.0)* screenheight;
}

double getProportionateScreenwidth(double inputWidth){
  double screenwidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0)* screenwidth;
}