import 'package:fdelivery/pages/bottomNAV.dart';
import 'package:fdelivery/pages/home.dart';
import 'package:fdelivery/pages/login.dart';
import 'package:fdelivery/pages/onboard.dart';
import 'package:fdelivery/pages/signup.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}

