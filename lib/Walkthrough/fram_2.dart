import 'package:enfin_libre/custom_items.dart';
import 'package:enfin_libre/Walkthrough/fram_3.dart';
import 'package:enfin_libre/welcom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SkippableScreenSecond extends StatelessWidget {
  const SkippableScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>   const Welcome(), ),);
            },
            child:  Text(
              'Skip',
              style: TextStyle(color: const Color(0xff1D4184),fontWeight: FontWeight.w500,fontSize: 20.sp),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image in the center
            Image.asset(
              ('res/images/Frame_2.png'), // Replace with your image URL or Asset
              height: 274.h,
              width: 280.w,
            ),

             SizedBox(height: 80.h),

            // Text below the image
             Text(
              'Empower your mindset',
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 45.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20.h),

             Text(
              'Access a treasure trove of resources designed to enhance your personal development journey. From insightful articles to motivating videos, find the tools you need to thrive',
              style: TextStyle(
                  fontFamily: 'Karla',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 60.h),

           CustomButton(
               text: 'Next',

               onPressed: (){
                             Navigator.pushReplacement(context,
                               MaterialPageRoute(builder: (context)=> const SkippableScreenThrid()),);
           }
           )
          ],
        ),
      ),
    );
  }
}
