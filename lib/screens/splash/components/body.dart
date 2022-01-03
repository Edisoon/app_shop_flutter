import 'package:app_shop/components/default_button.dart';
import 'package:app_shop/constanstes.dart';
import 'package:app_shop/screens/sing_in/sing_in_screen.dart';
import 'package:app_shop/screens/splash/components/splash_component.dart';
import 'package:app_shop/size_config.dart';

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bienvenido a KikiShop, Disfruta tu Compra!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Te ayudamos a encontrar \n La ropa que tanto Buscas",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Compra desde donde quieras \n Smartphone, tablets, Pc, Tu pones el limite",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashsContent(
                    image: splashData[index]["image"]!,
                    text: splashData[index]["text"]!,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenwidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continuar",
                      press: () {
                        Navigator.pushNamed(context, SingInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: AnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? PrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}

