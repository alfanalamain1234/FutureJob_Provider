import 'package:flutter/material.dart';
import 'package:future_provider/pages/home_page.dart';
import 'package:future_provider/pages/signin_page.dart';
import 'package:future_provider/providers/auth_providers.dart';
import 'package:future_provider/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class RegisterController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}

class _SignUpPageState extends State<SignUpPage> {
  RegisterController _registerController = RegisterController();
  bool isUploaded = false;

  void register() {
    String name = _registerController.nameController.text.trim();
    String email = _registerController.emailController.text.trim();
    String password = _registerController.passwordController.text.trim();

  }

  @override
  Widget build(BuildContext context) {
    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(
              () {
                isUploaded = !isUploaded;
              },
            );
          },
          child: Column(
            children: [
              Image.asset(
                'assets/images/icon_upload.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(
              () {
                isUploaded = !isUploaded;
              },
            );
          },
          child: Column(
            children: [
              Image.asset(
                'assets/images/image_profile.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 50,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up ',
                style: titleTextStyle,
              ),
              SizedBox(height: 2),
              Text(
                'Begin New Journey',
                style: subTitleTextStyle,
              ),
              SizedBox(height: 40),
              isUploaded ? showedImages() : uploadedImages(),
              // Center(
              //   child: Column(
              //     children: [
              //       Image.asset(
              //         'assets/images/icon_upload.png',
              //         width: 120,
              //         height: 120,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _registerController.nameController,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _registerController.emailController,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
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
                  SizedBox(height: 20),
                  TextField(
                    controller: _registerController.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),

              // create sizedBox with heigh 30
              // SizedBox(height: 20),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Your Goal',
              //       style: titleTextStyle,
              //     ),
              //     SizedBox(height: 20),
              //     TextField(
              //       decoration: InputDecoration(
              //         fillColor: Color(0xffF1F0F5),
              //         filled: true,
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(100),
              //           borderSide: BorderSide.none,
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(100),
              //           borderSide: BorderSide.none,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 312,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4141A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                    ),
                    onPressed: () {
                      AuthProvider().register(
                        _registerController.nameController.text.trim(),
                        _registerController.emailController.text.trim(),
                        _registerController.passwordController.text.trim(),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Text(
                    'Back To Sign In',
                    style: GoogleFonts.poppins(
                      color: Color(0xffB3B5C4),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
