import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// Custom  Main Button Class
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton(
      {super.key,  required this.onPressed,required this.text  });
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
              color: const Color(0xff1D4184),
              minWidth: 350.w,
              height: 60.h,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r)),
              onPressed: () {
                onPressed();
            },
            child: Text(text,style: TextStyle(fontFamily: 'Karla',color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w700))
          )
        ]
        )
    );
  }
}

// Custom Icon Button Class
class CustomIconButton extends StatelessWidget {
   final VoidCallback onPressed;
   final String Imagepath;
   final double  heigth;
   final double width;

  const CustomIconButton(
      {super.key,  required this.onPressed,required this.Imagepath,required this.heigth,required this.width});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: heigth,
              width: width,
              child: Image.asset(Imagepath),
            ),
          ),
        ]
        )
    );
  }
}

// Custom  First Activity Card Class
class ActivatieCardFrist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF1D4184)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
            children:[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Drink 4 glass of water ',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
                    Text('1/4',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
                  ]
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  const Icon(Icons.calendar_today_outlined, color: Color(0xFFF47960)),
                  SizedBox(width: 5.w),
                  const Text('07:30 PM - 09:30 PM',style: TextStyle(fontFamily: 'Karla'),),
                  SizedBox(width: 10.w),
                  const Icon(Icons.shield_moon_outlined, color: Color(0xFFF47960)),
                  const Text('12',style: TextStyle(fontFamily: 'Karla'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "25%",
                    style: TextStyle(
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: const Color(0xFF1D4184),
                    ),
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: 0.25,
                backgroundColor: Colors.grey[300],
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ]
        ),
      ),
    );
  }
}

// Custom  Second Activity Card Class
class ActivatiesCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 132.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF1D4184)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
            children:[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('100 pushups',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
                    Text('50/100',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
                  ]
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  const Icon(Icons.calendar_today_outlined, color: Color(0xFFF47960)),
                  SizedBox(width: 5.w),
                  const Text('07:30 PM - 09:30 PM',style: TextStyle(fontFamily: 'Karla'),),
                  SizedBox(width: 10.w),
                  const Icon(Icons.shield_moon_outlined, color: Color(0xFFF47960)),
                  const Text('12',style: TextStyle(fontFamily: 'Karla'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "50%",
                    style: TextStyle(
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: const Color(0xFF1D4184),
                    ),
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey[300],
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ]
        ),
      ),
    );
  }
}

// Custom Class Reward Card First
class RewardScreenCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200.h,
      width: 200.w,

      decoration: BoxDecoration(
        color: Color(0xFFFFECE8),
        border: Border.all(color: const Color(0xFFFFECE8)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(

            children:[
              Text('Do 100 pushups daily for 1 hour',style:TextStyle(fontFamily: 'Karla',fontSize: 18.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
              SizedBox(height: 10.h,),
              Column(
            children: [
              Row(
                children: [
                  Icon(Icons.shield_moon_outlined,color: Colors.grey,size: 15,),
                  SizedBox(width: 6.w,),
                  Text('12',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                  SizedBox(width: 10.w,),
                  Icon(Icons.access_time,color: Colors.grey,size: 15,),
                  SizedBox(width: 6.w,),
                  Text('60 mins',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184)))
                ],
              ),
             SizedBox(height: 7.h,),
              Row(
                children: [
                  Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 15,),
                  SizedBox(width: 10.w,),
                  Text('07:30 PM - 09:30 PM ',style:TextStyle(fontFamily: 'Karla',fontSize: 12.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                ],
              ),
             // SizedBox(height: 2.h,),
              MaterialButton(
                  color: const Color(0xff1D4184),
                  minWidth: 180.w,
                  //height: 20.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r)),
                  onPressed: () {},
                  child: Text('START',style: TextStyle(fontFamily: 'Karla',color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w700))
              )
            ],
         ),
            ]
        ),
      ),
    );
  }
}

//Custom Class Reward Card Second
class RewardScreenSecondCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200.h,
      width: 200.w,

      decoration: BoxDecoration(
        color: Color(0xFFE9F1FF),
        border: Border.all(color:  Color(0xFFE9F1FF),),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child:  Column(
          children: [
            Text('Do 100 pushups daily for 1 hour',style:TextStyle(fontFamily: 'Karla',fontSize: 18.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Icon(Icons.shield_moon_outlined,color: Colors.grey,size: 15.sp,),
                SizedBox(width: 6.w,),
                Text('12',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                SizedBox(width: 10.w,),
                Icon(Icons.access_time,color: Colors.grey,size: 15.sp,),
                SizedBox(width: 6.w,),
                Text('60 mins',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184)))
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 15,),
                SizedBox(width: 10.w,),
                Text('07:30 PM - 09:30 PM ',style:TextStyle(fontFamily: 'Karla',fontSize: 12.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
              ],
            ),
             SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "50%",
                  style: TextStyle(
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: const Color(0xFF1D4184),
                  ),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.grey[300],
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Class Reward Card Third
class RewardScreenThirdCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200.h,
      width: 200.w,

      decoration: BoxDecoration(
        color: Color(0xFFF2FFED),
        border: Border.all(color: const Color(0xFFF2FFED)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(

            children:[
              Text('Do 100 pushups daily for 1 hour',style:TextStyle(fontFamily: 'Karla',fontSize: 18.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
              SizedBox(height: 10.h,),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.shield_moon_outlined,color: Colors.grey,size: 15,),
                      SizedBox(width: 6.w,),
                      Text('12',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                      SizedBox(width: 10.w,),
                      Icon(Icons.access_time,color: Colors.grey,size: 15,),
                      SizedBox(width: 6.w,),
                      Text('60 mins',style:TextStyle(fontFamily: 'Karla',fontSize: 14.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184)))
                    ],
                  ),
                  SizedBox(height: 7.h,),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 15,),
                      SizedBox(width: 10.w,),
                      Text('07:30 PM - 09:30 PM ',style:TextStyle(fontFamily: 'Karla',fontSize: 12.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184))),
                    ],
                  ),
                  // SizedBox(height: 2.h,),
                  MaterialButton(
                      color: const Color(0xff4ECB71),
                      minWidth: 180.w,
                      //height: 20.h,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.r)),
                      onPressed: () {},
                      child: Text('Finished',style: TextStyle(fontFamily: 'Karla',color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w700))
                  )
                ],
              ),

              // Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('100 pushups',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
              //       Text('50/100',style:TextStyle(fontFamily: 'Karla',fontSize: 16.sp,fontWeight: FontWeight.w600,color: const Color(0xFF1D4184))),
              //     ]
              // ),
              // SizedBox(height: 12.h),
              // Row(
              //   children: [
              //     const Icon(Icons.calendar_today_outlined, color: Color(0xFFF47960)),
              //     SizedBox(width: 5.w),
              //     const Text('07:30 PM - 09:30 PM',style: TextStyle(fontFamily: 'Karla'),),
              //     SizedBox(width: 10.w),
              //     const Icon(Icons.shield_moon_outlined, color: Color(0xFFF47960)),
              //     const Text('12',style: TextStyle(fontFamily: 'Karla'),),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text(
              //       "50%",
              //       style: TextStyle(
              //         fontFamily: 'Karla',
              //         fontWeight: FontWeight.bold,
              //         fontSize: 16.sp,
              //         color: const Color(0xFF1D4184),
              //       ),
              //     ),
              //   ],
              // ),
              // LinearProgressIndicator(
              //   value: 0.5,
              //   backgroundColor: Colors.grey[300],
              //   color: Colors.orange,
              //   borderRadius: BorderRadius.circular(20.r),
              // ),
            ]
        ),
      ),
    );
  }
}


