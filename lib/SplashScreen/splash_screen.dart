import 'dart:async';

import 'package:flutter/material.dart';

import '../Walkthrough/fram_1.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>   const SkippableScreen(), ),);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  const Color(0xffE7EFFF),
        child: Center(child:
        Image.asset('res/images/logo.png'),),
      ),
    );
  }
}