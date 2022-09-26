import 'package:flutter/gestures.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:laurence_app/login/palette.dart';
import '../main.dart';
import 'default_button.dart';
class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {

  final TextEditingController emailEditingController =
  new TextEditingController();
  final TextEditingController passwordEditingController =
  new TextEditingController();
  bool isSignupScreen = true;
  bool isMale = true;
  bool isRememberMe = false;
  final _formKey = GlobalKey<FormState>();
  bool _isLoggingIn = false;



  @override
  Widget build(BuildContext context) {

    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,

        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';

          }
          return null;
        },
        onChanged: (value) {


        },
        textInputAction: TextInputAction.done,
        //validator: ,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        ));
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,

        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';

          }
          return null;
        },
        onChanged: (value) {
          setState(() {

          });

        },
        textInputAction: TextInputAction.done,
        //validator: ,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        ));
    return  Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/background.jpg"),
                        fit: BoxFit.fill)),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  color: Color(0xffa5a5c4).withOpacity(.85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Welcome to",
                            style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 2,
                              color: Colors.purple,
                            ),
                            children: [
                              TextSpan(
                                text: isSignupScreen ? " Meals," : " Back,",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        isSignupScreen
                            ? "Signup to Continue"
                            : "Signin to Continue",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Trick to add the shadow for the submit button
            buildBottomHalfContainer(true),
            //Main Contianer for Login and Signup
            AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              top: isSignupScreen ? 200 : 230,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceInOut,
                height: isSignupScreen ? 380 : 250,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: !isSignupScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                if (!isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.purple,
                                  )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "SIGNUP",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                if (isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.purple,
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                      if (isSignupScreen) buildSignupSection(),
                      if (!isSignupScreen) buildSigninSection()
                    ],
                  ),
                ),
              ),
            ),
            // Trick to add the submit button
            buildBottomHalfContainer(false),
            // Bottom buttons
            Positioned(
              top: MediaQuery.of(context).size.height - 100,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Text(isSignupScreen ? "Or Signup with" : "Or Signin with"),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildTextButton(MaterialCommunityIcons.facebook,
                            "Facebook", Palette.facebookColor),
                        buildTextButton(MaterialCommunityIcons.google_plus,
                            "Google", Palette.googleColor),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
  Container setNewPassword(){
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextField(Icons.mail_outline, "info@demouri.com", false, true),
            buildTextField(
                MaterialCommunityIcons.lock_outline, "**********", true, false),
            buildTextField(
                MaterialCommunityIcons.lock_outline, "**********", true, false),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButton(
                  text: "Continue",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginSignupScreen()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Container buildSigninSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextField(Icons.mail_outline, "info@demouri.com", false, true),
            buildTextField(
                MaterialCommunityIcons.lock_outline, "**********", true, false),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => setNewPassword()));
                  },
                  child: Text("Forgot Password?",
                      style: TextStyle(fontSize: 12, color: Palette.textColor1)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildSignupSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextField(MaterialCommunityIcons.account_outline, "User Name",
                false, false),
            buildTextField(
                MaterialCommunityIcons.email_outline, "email", false, true),
            buildTextField(
                MaterialCommunityIcons.lock_outline, "password", true, false),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                   isMale = true;
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: isMale
                                  ? Palette.textColor2
                                  : Colors.transparent,
                              border: Border.all(
                                  width: 1,
                                  color: isMale
                                      ? Colors.transparent
                                      : Palette.textColor1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            MaterialCommunityIcons.account_outline,
                            color: isMale ? Colors.white : Palette.iconColor,
                          ),
                        ),
                        Text(
                          "Organisation",
                          style: TextStyle(color: Palette.textColor1),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: isMale
                                  ? Colors.transparent
                                  : Palette.textColor2,
                              border: Border.all(
                                  width: 1,
                                  color: isMale
                                      ? Palette.textColor1
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            MaterialCommunityIcons.account_outline,
                            color: isMale ? Palette.iconColor : Colors.white,
                          ),
                        ),
                        Text(
                          "Individual",
                          style: TextStyle(color: Palette.textColor1),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By pressing 'Submit' you agree to our ",
                    style: TextStyle(color: Palette.textColor2),
                    children: [
                      TextSpan(
                        recognizer:  new TapGestureRecognizer()
                          ..onTap = () {
                          //launch('https://kwafatest.herokuapp.com/terms');
                          },
                        text: "terms & conditions",
                        style: TextStyle(color: Color(0xFF5CAB6F)),

                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
      onPressed: () {

      },
      style: TextButton.styleFrom(
          side: BorderSide(width: 1, color: Colors.grey),
          minimumSize: Size(145, 40),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: backgroundColor),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }

  Widget buildBottomHalfContainer(bool showShadow) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignupScreen ? 535 : 430,
      right: 0,
      left: 0,
      child: Center(
        child: GestureDetector(
          onTap: ()  {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  MyHomePage()));
          },
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  if (showShadow)
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      spreadRadius: 1.5,
                      blurRadius: 10,
                    )
                ]),
            child: !showShadow
                ? Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.greenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
                : Center(),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        onChanged: (value) {
        isEmail = value as bool;
        },
        validator: isEmail ?  (value) => !value.toString().contains('@') || !value.toString().contains('.')?'Not a valid email address':null
            : (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
}

