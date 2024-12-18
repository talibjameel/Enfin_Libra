import 'package:enfin_libre/welcom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_items.dart';


class SkippableScreenThrid extends StatelessWidget {
  const SkippableScreenThrid({super.key});

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
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image in the center
            Image.asset(
              ('res/images/Frame_3.png'), // Replace with your image URL or Asset
              height: 274.h,
              width: 280.w,
            ),

             SizedBox(height: 60.h),

            // Text below the image
             Text(
              'Craft your routine',
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 55.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),

             SizedBox(height: 20.h),

             Text(
              'Create morning rituals that set the tone for success. Customize your routine, track your habits, and receive gentle reminders to stay focused and aligned with your goals',
              style: TextStyle(fontFamily: 'Karla',fontSize: 23.sp,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 55.h),

            CustomButton(
                text: 'Get Started',

                onPressed: (){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> const Welcome()),);
                }

            )
          ],
        ),
      ),
    );
  }
}
