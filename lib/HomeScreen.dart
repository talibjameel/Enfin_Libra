import 'package:enfin_libre/profile_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'charts.dart';
import 'custom_items.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends  State<HomeScreen> with TickerProviderStateMixin {
  bool checkboxValue=false;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener((){
      setState(() {
      });
    });
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfileScreen()),);
                });
              },
              child: PhysicalModel(color: Colors.red, clipBehavior: Clip.antiAlias, shape: BoxShape.circle, child: Image.asset('res/images/myprofilepic.png', width: 57.w, height:57.w, fit: BoxFit.cover,)),
            ),
            //   PhysicalModel(color: Colors.red, clipBehavior: Clip.antiAlias, shape: BoxShape.circle, child: Image.asset('res/images/myprofilepic.png', width: 57.w, height:57.w, fit: BoxFit.cover,)),
            //   IconButton(onPressed: (){}, icon: SizedBox(height: 57.h, width: 57.w, child: Image.asset('res/images/myprofilepic.png',fit: BoxFit.cover,),)),
            //   CustomIconButton(onPressed: (){}, Imagepath: 'res/images/myprofilepic.png', heigth: 57.h, width: 57.w,),
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

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                TabBar(
                  //  isScrollable: true,
                    controller: _tabController,
                    labelColor: const Color(0xFF1D4184), // Active tab color
                    unselectedLabelColor: Colors.grey,
                    indicator: UnderlineTabIndicator(
                        insets:  EdgeInsets.symmetric(horizontal: 100.w),
                        borderSide: BorderSide(
                          width: 3.w,
                          color: const Color(0xFF1D4184),
                        )
                    ),
                    tabs:[
                      Tab(
                        icon: Icon(Icons.emoji_events, size: 30.w),
                        child:  Text('Reward',style: TextStyle(fontFamily: 'Karla',fontSize: 18.sp,fontWeight: FontWeight.w600),),
                      ),
                      Tab(
                        icon: Icon(Icons.auto_graph, size: 30.w),
                        child:  Text('Overview',style: TextStyle(fontSize: 18.sp,fontFamily: 'Karla',fontWeight: FontWeight.w600),),
                      ),
                      Tab(
                        icon:
                        // SizedBox(height: 100,width: 100,child: SvgPicture.asset('res/images/taskbtn.svg'),),
                        Icon(Icons.menu , size: 30.w,),
                        child:  Text('Task',style: TextStyle(fontSize: 18.sp,fontFamily: 'Karla',fontWeight: FontWeight.w600),),
                      ),
                    ]
                ),
                Expanded(
                    child:TabBarView(
                        controller: _tabController,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20.h,
                              left: 20.w,
                              right: 20.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h,),

                                Text('Dashboard',style:TextStyle(fontFamily: 'Karla',fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.grey) , textAlign: TextAlign.left,),

                                SizedBox(height: 20.h),
                                _progressCard(),

                                SizedBox(height: 16.h),
                                _performanceCard(),

                                SizedBox(height: 16.h),
                                _strikeCard(),

                                SizedBox(height: 90.h),
                                //_buildBottomNavigationBar(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20.h,
                              left: 20.w,
                              right: 20.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h,),
                                Text('Overview',style:TextStyle(fontFamily: 'Karla',fontSize: 20.sp,fontWeight: FontWeight.w600,color: Color(0xFF1D4184)) , textAlign: TextAlign.left,),
                                //SizedBox(height: 10.h),
                                SizedBox(
                                  height: 300.h,
                                  width: double.infinity,
                                  child: ColumnChart(),
                                ),
                                // SvgPicture.asset('res/images/overviewchart.svg',width: 374.w,height: 225.h,),
                                //  SizedBox(height: 10.h),
                                Text('Recent task',style:TextStyle(fontFamily: 'Karla',fontSize: 20.sp,fontWeight: FontWeight.w600,color: Color(0xFF1D4184)) , textAlign: TextAlign.left,),
                                SizedBox(height: 10.h),
                                _recentcard(),
                                //  _buildBottomNavigationBar(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20.h,
                              left: 20.w,
                              right: 20.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12.h),
                                Text('All Task',style:TextStyle(fontFamily: 'Karla',fontSize: 24.sp,fontWeight: FontWeight.w600,color: Color(0xFF1D4184)) , textAlign: TextAlign.left,),
                                SizedBox(height: 12.h),
                                _recentcard(),
                                // SizedBox(height: ,),
                                // _buildBottomNavigationBar(),
                              ],
                            ),
                          ),
                        ]
                    )
                )
              ],
            ),
          ),
        ),
        // Positioned(
        //     top: 790.h,
        //     left: 35.w,
        //     right: 35.w,
        //     bottom: 15.h ,
        //     child: SizedBox(height: 80,width: 350,child: _buildBottomNavigationBar(),)
        // ),
      ],
    ),

  );
  }

  Widget  _progressCard() {
    return Container(
      height: 142.h,
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey[200]!,spreadRadius: 2,blurRadius: 5),
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your next reward',style: TextStyle(fontFamily: 'Karla',fontWeight: FontWeight.w700,fontSize: 20.sp,color: const Color(0xFF1D4184)),),
          SizedBox(height: 16.h),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined, color: Color(0xFFF47960)),
              const SizedBox(width: 5),
              const Text('2 days left',style: TextStyle(fontFamily: 'Karla'),),
              SizedBox(width: 10.w),
              const Icon(Icons.shield_moon_outlined, color: Color(0xFFF47960)),
              const Text('12',style: TextStyle(fontFamily: 'Karla'),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "50/100",
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
    );
  }

  Widget  _performanceCard() {
    return Container(
      height: 120.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey[200]!, spreadRadius: 2.r, blurRadius: 5.r),
          ]
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('res/images/madel.svg',height: 40.h,width: 40.w,),
                SizedBox(width: 16.w,),
                Column(
                  children:[
                    Text('3 days Perfect!',style: TextStyle(fontFamily: 'Karla',fontSize: 25.sp,fontWeight: FontWeight.w700,color: const Color(0xFF1D4184)),),
                    Text('Fantastic performance',style: TextStyle(fontFamily: 'Karla',fontSize: 16.sp),),
                  ],
                ),
                //  const Text('3 Day Perfect!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFF1D4184)),),
              ],
            ),
            //  const Text('Fantastic Performance!',style: TextStyle(fontSize: 12),),
          ]
      ),
    );
  }
  Widget _strikeCard() {

    List<Map<String, dynamic>> days = [
      {"day": "Su", "checked": true},
      {"day": "Mo", "checked": true},
      {"day": "Tu", "checked": true},
      {"day": "We", "checked": false},
      {"day": "Th", "checked": true},
      {"day": "Fr", "checked": false},
      {"day": "Sa", "checked": true},
    ];

    return Container(
      height: 195.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(color: Colors.grey[200]!, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('res/images/fire.svg', height: 36, width: 36),
              SizedBox(width: 16.w),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21 days Streak',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1D4184),
                    ),
                  ),
                  Text(
                    'Fantastic! Keep it up!',
                    style: TextStyle(fontSize: 15, fontFamily: 'Karla'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(days[index]["day"]),
                    SizedBox(
                      height: 35,
                      width: 40,
                      child: Checkbox(
                        value: checkboxValue,
                        onChanged: (val) {

                          if(checkboxValue == false){
                            setState(() {
                              checkboxValue = true;
                            });
                          }
                          else if (checkboxValue == true){
                            setState(() {
                              checkboxValue = false;
                            });
                          }
                        },
                        shape: const CircleBorder(),
                        activeColor: const Color(0xff1D4184),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _recentcard(){
    return Expanded(
      child: Container(
        // height: 414.h,
        //  padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ActivatieCardFrist(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
              SizedBox(height: 10.h,),
              ActivatiesCard(),
            ],
          ),
        ),
      ),
    );
  }
}