import 'package:enfin_libre/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'badge_FourthSCR.dart';
import 'custom_items.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<CalenderScreen> {

  int _selectedIndex= 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7EFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7EFFF),
        automaticallyImplyLeading: false,
        title: Padding(
          padding:  EdgeInsets.only(
            top: 25.h,
            bottom: 10.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(1),
                ),
                onPressed: () {
                  setState(() {
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfileScreen()),);
                  });
                },
                child: PhysicalModel(color: Colors.red, clipBehavior: Clip.antiAlias, shape: BoxShape.circle, child: Image.asset('res/images/myprofilepic.png', width: 57.w, height:57.w, fit: BoxFit.cover,)),
              ),
              Expanded(child: Text('Hello 👋, Talib Jameel',style: TextStyle(fontFamily: 'Karla',color: Color(0xFF1D4184),fontWeight: FontWeight.w700,fontSize:25.sp)),),
              SizedBox(width: 86.w,),
              IconButton (
                onPressed: () {},
                icon:  Badge.count(count: 9999,child: Icon(Icons.notifications_none_rounded,),),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20.h,
            left: 0,
            right: 0,
            bottom: 190.h ,
            child: Container(
              padding:  EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.r),
                    topRight: Radius.circular(60.r),),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[200]!, spreadRadius: 2, blurRadius: 5),
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Create your first Habit',style:TextStyle(fontFamily: 'Karla',fontSize: 32.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                    SizedBox(height: 16.h,),
                    Center(child: Text("Let's start your journey to personal growth by creating your first habit. ",style:TextStyle(fontFamily: 'Karla',fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.black)),),
                    SizedBox(height: 112.h,),
                    SvgPicture.asset('res/images/third_Screen_image.svg',height: 260.h,width: 336.w,),
                    SizedBox(height: 80.h,),
                    MaterialButton(
                      minWidth: 300.w,
                      height: 80.h,
                      shape: RoundedRectangleBorder(
                          side:  BorderSide(color: Colors.black,width: 2.w),
                          borderRadius: BorderRadius.circular(100.r)), // Set the radius here
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>    BadgeScreen(), ),);
                      },
                      child: const Text('+ Create a habit',style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
