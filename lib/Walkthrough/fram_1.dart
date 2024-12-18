import 'package:enfin_libre/welcom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_items.dart';
import 'fram_2.dart';


class SkippableScreen extends StatelessWidget {
  const SkippableScreen({super.key});

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
              ('res/images/Frame_1.png'), // Replace with your image URL or Asset
              height: 274,
              width: 280,
            ),
             SizedBox(height: 33.h),

            // Text below the image
             Text(
              'Discover your journey',
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 45.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
             Text(
              'Explore a world of challenges tailored to your growth. Engage in daily tasks, track your progress, and unlock rewards on your path to personal excellence',
              style: TextStyle(fontFamily: 'Karla',fontSize: 23.sp,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 60.h),

            // "Next" button at the bottom
            CustomButton(
              text: 'Next',
              onPressed: () {
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> const SkippableScreenSecond(),),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
