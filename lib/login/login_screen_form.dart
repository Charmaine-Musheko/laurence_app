//

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laurence_app/login/constants.dart';
import 'package:laurence_app/login/registration_screen.dart';

import '../main.dart';


class LoginSecondScreen extends StatefulWidget {


  String value;

   LoginSecondScreen({ Key? key, this.value = ""}) : super(key: key);

  @override
  _LoginSecondScreenState createState() => _LoginSecondScreenState();
}

class _LoginSecondScreenState extends State<LoginSecondScreen>{

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
      obscureText: true,
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
    color: kPrimaryColor,
    onPressed: () {
    //TODO: Replace this with actual text from the fields


    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));},
    child: Text(
    "Login",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    ),
    );


  return Scaffold(

      backgroundColor: Color(0xFFBFE8C7),
      body: Center(
      child: SingleChildScrollView(
      child: Container(
        color: Color(0xFFBFE8C7),
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Sign In", style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 30),),
                SizedBox(height: 45),
                emailField,
                SizedBox(height: 45),
                passwordField,
                SizedBox(height: 45),
                ButtonLogin,
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                          RegistrationScreen()));
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: Color(0xFF5CAB6F),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                      ),
                    )
                  ])
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

