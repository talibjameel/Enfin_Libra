import 'package:enfin_libre/Login_Auth/login.dart';
import 'package:enfin_libre/Login_Auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'calender_ThirdSCR.dart';
import 'custom_items.dart';

class Welcome extends StatelessWidget{
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
          ),

          body: Padding(
            padding:  EdgeInsets.all(20.w),
            child: Column(
              children: [
                 Text(
                  'Welcome to Enfin Libre.',
                   style: TextStyle(
                    fontFamily: 'Karla',
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w500,
                   ),
                   textAlign: TextAlign.left,
                 ),

                 SizedBox(height: 35.h),

                 Text(
                  'Where Challenges Meet Transformation!',
                  style: TextStyle( fontFamily: 'Karla', fontSize: 58.sp,fontWeight: FontWeight.w700,color: const Color(0xff1D4184),
                  ),
                ),


                SizedBox(height: 70.h),

                Container(
                 decoration: BoxDecoration(
                     color:  const Color(0xFFFFE7D0), // Background color
                     borderRadius: BorderRadius.circular(20.r)),
                  width: 400.w, // Full width
                  height: 300.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children:[

                    CustomButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()),);
                    },
                        text: 'Sign up'
                    ),
                       SizedBox(height: 12.h),
                    MaterialButton(
                      minWidth: 350.w,
                      height: 55.h,
                      shape: RoundedRectangleBorder(
                          side:  BorderSide(color: Colors.black,width: 2.w),
                          borderRadius: BorderRadius.circular(100.r)), // Set the radius here
                      onPressed: () {
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>   const LoginScreen(), ),);
                      },
                      child: const Text('Login',style: TextStyle(color: Colors.black),),
                    ),
                  ],
                  ),
                ),
              ],
            ),
          ),

        );
  }
  
}