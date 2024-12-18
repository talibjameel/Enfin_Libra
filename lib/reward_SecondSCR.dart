import 'package:enfin_libre/calender_ThirdSCR.dart';
import 'package:enfin_libre/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_items.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {

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
            bottom: 0 ,
            child: Container(

              padding:  EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.r),
                    topRight: Radius.circular(60.r),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[200]!, spreadRadius: 2, blurRadius: 5),
                  ]
              ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(height: 40.h,),
                      Text('My Challenges',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w700,color: Color(0xFF1D4184)),),
                     SizedBox(height: 24.h,),
                      Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text('All')),
                        TextButton(onPressed: (){}, child: Text('Pending')),
                        TextButton(onPressed: (){}, child: Text('In Process')),
                        TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CalenderScreen()));}, child: Text('Finshed')),
                      ]                    ),
                    SizedBox(height: 20.h,),
                      Container(
                        height: 425.h,
                        width: 470.w,
                        color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                              children:[
                                        RewardScreenCard(),
                                        SizedBox(width: 12.w,),
                                        RewardScreenSecondCard(),
                              ],
                           ),
                                SizedBox(height: 24.h,),
                                Row(
                              children:[
                                        RewardScreenThirdCard(),
                                        SizedBox(width: 12.w,),
                                        RewardScreenThirdCard(),
                              ],
                           ),

                          ]
                      ),),
                    ],
                  ),
                ),
                
            ),
          ),
          // Positioned(
          //     top: 790.h,
          //     left: 35.w,
          //     right: 35.w,
          //     bottom: 15.h ,
          //     child: SizedBox(height: 80,width: 350,child: ,)
          // ),
        ],
      ),
    );
  }
}
