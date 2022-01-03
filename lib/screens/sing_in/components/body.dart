import 'package:app_shop/components/custom_sufix_icon.dart';
import 'package:app_shop/components/default_button.dart';
import 'package:app_shop/constanstes.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
          child: Column(
            children: [
              Text(
                "Bienvenido de Nuevo",
                style: TextStyle(
                  color: BlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenwidth(28),
                ),
              ),
              Text(
                "Inicia sesion con tu correo y contraseña \n o incia con una red social",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              SingFormState(),
            ],
          ),
        ),
      ),
    );
  }
}

class SingFormState extends StatefulWidget {
  @override
  SingFormStateState createState() => SingFormStateState();
}

class SingFormStateState extends State<SingFormState> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefaultButton(text: "Iniciar Sesion", press: (){})
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
        focusColor: PrimaryColor,
        labelText: "Contraseña",
        hintText: "Ingresa tu contraseña",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSufixIcon(
          icon: (Icons.lock_outline),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      
      validator: (value){
        if(value!.isEmpty){
          setState(() {
            errors.add("Por favor ingresa tu email")
          });
        }
        return null;
      },
      decoration: InputDecoration(
        focusColor: PrimaryColor,
        labelText: "Email",
        hintText: "Ingresa tu email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSufixIcon(
          icon: (Icons.mail_outline),
        ),
      ),
    );
  }
}
