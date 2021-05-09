import 'package:flutter/material.dart';

import 'package:testapp/ui/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TestApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
