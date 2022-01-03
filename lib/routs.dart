import 'package:app_shop/screens/sing_in/sing_in_screen.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes ={
  SplasScreen.routeName: (context) => SplasScreen(),
  SingInScreen.routeName: (context) => SingInScreen(),

};