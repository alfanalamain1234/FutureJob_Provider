import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:future_provider/models/user_model.dart';
import 'package:future_provider/pages/home_page.dart';
import 'package:future_provider/providers/auth_providers.dart';
import 'package:future_provider/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:future_provider/pages/signup_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class SignInController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}

class _SignInPageState extends State<SignInPage> {
  SignInController _signInController = SignInController();
  bool isEmailValid = true;
  late Future<UserModel?> futureUser;

  @override
  void initState(){
    super.initState();
    futureUser = AuthProvider().login(
      _signInController.emailController.text.trim(),
      _signInController.passwordController.text.trim());
  }

  void signIn() {
    String email = _signInController.emailController.text.trim();
    String password = _signInController.passwordController.text.trim();
  }

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: titleTextStyle,
              ),
              Text(
                'Build Your Career',
                style: subTitleTextStyle,
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/image_sign_in.png',
                      width: 262,
                      height: 240,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _signInController.emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: isEmailValid
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56),
                        ),
                      ),
                      hintText: 'Masukkan Email',
                    ),
                    style: TextStyle(
                      color:
                          isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _signInController.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: Color(0xff4141A4),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Masukkan Password',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 312,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4141A4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                    onPressed: () {
                       AuthProvider().login(
                          _signInController.emailController.text.trim(),
                          _signInController.passwordController.text.trim()
                        );
                      Navigator.push( 
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ),  
              FutureBuilder<UserModel?>(
                future: futureUser,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Fluttertoast.showToast(
                      msg: snapshot.data!.token,
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                    // return Text(snapshot.data!.token);
                  } else if (snapshot.hasError) {
                    // return Text('${snapshot.error}');
                    Fluttertoast.showToast(
                      msg: "ERROR",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 80),
                child: Center(
                  child: InkWell(
                    onTap: () {
                     
                    },
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.poppins(
                        color: Color(0xffB3B5C4),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
