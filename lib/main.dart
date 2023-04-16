import 'package:flutter/material.dart';
import 'package:future_provider/pages/signin_page.dart';
import 'package:future_provider/pages/signup_page.dart';
import 'package:future_provider/pages/splash_page.dart';
import 'package:future_provider/pages/started_page.dart';
import 'package:future_provider/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:future_provider/providers/auth_providers.dart';
import 'package:future_provider/providers/user_providers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/startedpage': (context) => StartedPage(),
          '/signinpage': (context) => SignInPage(),
          '/signunpage': (context) => SignUpPage(),

        },
      ),
    );
  }
}
