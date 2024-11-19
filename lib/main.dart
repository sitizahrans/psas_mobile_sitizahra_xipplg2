import 'package:flutter/material.dart';
import 'package:psas_mobile_pplg2/login_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi login',
      theme: ThemeData(
        primarySwatch: Colors.pink, 
      ),
      home: Loginpage(),
      );
  }
}

