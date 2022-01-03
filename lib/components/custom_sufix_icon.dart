import 'package:flutter/material.dart';

class CustomSufixIcon extends StatelessWidget {
  const CustomSufixIcon({
    Key? key,
    required this.icon, 
  }) : super(key: key);

  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Icon(icon, size: 30,),
    );
  }
}
