import 'package:app_shop/constanstes.dart';
import 'package:app_shop/routs.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:app_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplasScreen(),
      initialRoute: SplasScreen.routeName,
      routes: routes,
    );
  }
}

