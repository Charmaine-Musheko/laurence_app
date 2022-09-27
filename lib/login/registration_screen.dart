import 'package:flutter/material.dart';
import '../login_screen.dart';
import '../main.dart';
import 'constants.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  //
  final TextEditingController firstNameEditingController =
      new TextEditingController();
  final TextEditingController secondNameEditingController =
      new TextEditingController();
  final TextEditingController emailEditingController =
      new TextEditingController();
  final TextEditingController passwordEditingController =
      new TextEditingController();
  final TextEditingController confirmPasswordEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nameTextField = TextFormField(
        autofocus: false,
        controller: firstNameEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          firstNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    final secondNameField = TextFormField(
        autofocus: false,
        controller: secondNameEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          secondNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Surname",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    final emailTextField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email Address",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    final passwordTextField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        onSaved: (value) {
          passwordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: confirmPasswordEditingController,
        obscureText: true,
        onSaved: (value) {
          passwordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    final ButtonRegister = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        color: kPrimaryColor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Text(
          "Register",
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
                    Text("Sign Up", style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 50),),
                    SizedBox(height: 25),
                    nameTextField,
                    SizedBox(height: 25),
                    secondNameField,
                    SizedBox(height: 25),
                    emailTextField,
                    SizedBox(height: 25),
                    passwordTextField,
                    SizedBox(height: 25),
                    confirmPasswordField,
                    SizedBox(height: 25),
                    ButtonRegister,
                    SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account?"),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Login",
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
