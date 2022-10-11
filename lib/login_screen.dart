//

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laurence_app/login/login_screen.dart';
import 'package:laurence_app/login/login_screen_form.dart';
import 'package:laurence_app/login/registration_screen.dart';


import 'login/constants.dart';
import 'main.dart';

class LoginScreen extends StatefulWidget {


  String value;

   LoginScreen({ Key? key, this.value = ""}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

final _formKey = GlobalKey<FormState>();

final TextEditingController emailController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    //email field
    final emailField = TextFormField(
     autofocus: false,
     controller: emailController,
     keyboardType: TextInputType.emailAddress,

     onSaved: (value)
      {

      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email Address",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
      )
    );

    //email field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,


      onSaved: (value)
      {

      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      )
    );

final ButtonLogin = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      minWidth: MediaQuery.of(context).size.width,
    color: Color(0xFF72AE7A),
    onPressed: () {


    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));},
    child: Text(
    "SignUp",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    ),
    );
    final Button2Login = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        color: Color(0xFF72AE7A),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSecondScreen()));},
        child: Text(
          "SignIn",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );


  return Scaffold(

      backgroundColor: Color(0xFF5CAB6F),
      body: Center(
      child: SingleChildScrollView(
      child: Container(
        color: Color(0xFF5CAB6F),
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text("Good Food Catering Services", style: TextStyle(
              color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
            ),),

                SizedBox(
                    height: 200,
                    child: Image.asset("assets/food-13563.png",
                      fit: BoxFit.contain,
                    )),

                SizedBox(height: 45),
                Text("Welcome", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 45),
                Text("Sign Up", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),

                SizedBox(height: 45),
                ButtonLogin,
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Have an account Already?", style: TextStyle(
                    color: Colors.white,
                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                  LoginSecondScreen()));
                    },
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                      ),
                    )
                  ]),
                SizedBox(height: 45),
                Button2Login,
              ],
          ),
          ),
        ),
      ),
    ),
      ),
    );
  }
}

