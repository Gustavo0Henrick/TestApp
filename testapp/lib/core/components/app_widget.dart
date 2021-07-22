import 'package:flutter/material.dart';
import 'package:testapp/core/pages/home.dart';
import 'package:testapp/core/pages/home/home_page.dart';
import 'package:testapp/core/pages/login/login_page.dart';
import 'package:testapp/core/pages/register/register_page.dart';
import 'package:testapp/core/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TestApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login_page",
      routes: {
        "/login_page": (context) => LoginPage(),
        "/register_page": (context) => RegisterPage(),
        "/splash_page": (context) => SplashPage(),
        "/home_page": (context) => HomePage(),
      },
    );
  }
}
