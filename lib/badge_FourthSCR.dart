import 'package:enfin_libre/reward_SecondSCR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BadgeScreen extends StatelessWidget{
  const BadgeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:  Colors.white,
     body: Stack(
       children: [
         Positioned(
             top: 0,
             left: 0,
             right: 0,
            // bottom: 700.h,
           child: ClipRRect(
             borderRadius:  BorderRadius.only(
               bottomLeft: Radius.circular(50.r),
               bottomRight: Radius.circular(50.r),
             ),
             child: Container(
                 color:Color(0xFF1D4184),
                 child: Padding(
                   padding: EdgeInsets.only(
                     top: 60.h,
                   ),
                   child: Column(
                     children: [
                       Row(
                            children: [
                              IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RewardScreen()));}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                              SizedBox(width: 110.w,),
                              Text('Rewards',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,fontFamily:'Karla',color: Colors.white ),),
                            ],
                          ),
                       SizedBox(height: 15.h,),
                       Text('0 Coins',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w700,fontFamily:'Karla',color: Colors.white ),),
                       SizedBox(height: 8.h,),
                       Text('Total Rewards Earned',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,fontFamily:'Karla',color: Colors.white ),),
                       SizedBox(height: 45.h,),
                     ],),
                 ))
           ),
         ),
         Positioned(
             top: 260.h,
             left: 0,
             right: 0,
             bottom: 0,
             child: Container(
               padding:  EdgeInsets.all(40.w),
               decoration:  BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(30.r),
                   topRight: Radius.circular(30.r),
                 ),
               ),
               child: Image.asset('res/images/badgeScreenimg.png'),
             ),
         )
       ],

     ),
    );
  }

}