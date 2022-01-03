import 'components/body.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  static String routeName = "/sing_in";
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iniciar Sesión"),
      ),
      body: Body(),
    );
  }
}
