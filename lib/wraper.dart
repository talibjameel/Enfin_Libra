import 'package:enfin_libre/Login_Auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Login_Auth/verify.dart';

class Wraper extends StatefulWidget {
  const Wraper({super.key});
  @override
  State<Wraper> createState() => _WraperState();
}
class _WraperState extends State<Wraper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              print(snapshot.hasData);
              if(snapshot.data!.emailVerified){
                return   HomeScreen();
              }else{
                return const VerifyPage();
              }
            }
            else{
              return LoginScreen();
            }
          }
      ),
    );
  }
}
