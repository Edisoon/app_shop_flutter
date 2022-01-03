import 'package:app_shop/screens/splash/components/body.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class SplasScreen extends StatelessWidget {

  static String  routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}