
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_items.dart';
import 'Login_Auth/login.dart';
import 'main.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? selectedCountry;


  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (a,b){
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));},
          ),
            automaticallyImplyLeading: false,
          title: Center(child: Text('My Account')),
          backgroundColor: Color(0xFFE7EFFF),
        ),
        backgroundColor: Color(0xFFE7EFFF),
        body: Padding(
          padding: EdgeInsets.only(
            top:40.h ,
            left: 5.w ,
            right: 5.w,
            //bottom: ,
          ),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 130.h,
                width: 425.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:  Colors.white),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PhysicalModel(
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                              // elevation: 60.0,
                              shape: BoxShape.circle,
                              child: Image.asset(
                                'res/images/myprofilepic.png',
                                width: 75.w,
                                 height: 75.w,
                                fit: BoxFit.cover,
                              )),
                          // IconButton(onPressed: (){}, icon: SizedBox(height: 200.h, width: 90.w, child: Image.asset('res/images/iconimg.png',),)),
                          //CustomIconButton(onPressed: (){}, Imagepath: 'res/images/iconimg.png', heigth: 200.h, width: 90.w,),
                          SizedBox(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Admin',style: TextStyle(fontFamily: 'Karla',color: Colors.black,fontWeight: FontWeight.w700,fontSize:20.sp)),
                              SizedBox(height: 8.h,),
                              Text('Talibjameel0022gmail.com',style: TextStyle(fontFamily: 'Karla',color: Colors.grey,fontWeight: FontWeight.w700,fontSize:14.sp)),

                            ],
                          ),
                          SizedBox(width: 30.w,),
                          IconButton(
                            onPressed: () {
                              _showProfileEditModel(context);
                            },
                            icon: Icon(Icons.mode_edit_outline_outlined),
                            // SizedBox(
                            //   height: 70.h,
                            //   width: 44.w,
                            //   child: SvgPicture.asset('res/images/notification.svg'),
                            // ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              MaterialButton(
                onPressed: (){_showSecurityModel(context);},child: Container(
                height: 88.h,
                width: 420.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:  Colors.white),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          Icon(Icons.lock_outline_rounded , size: 30.w,color: Color(0xFF7E6EE0),),
                          SizedBox(width: 25.w,),
                          Text('Security Settings',style: TextStyle(fontFamily: 'Karla',color: Colors.black,fontWeight:FontWeight.w700 ,fontSize: 20.sp),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),),

              SizedBox(height: 8.h),
              MaterialButton(onPressed: (){_showAboutUsModel(context);},child:Container(
                height: 95.h,
                width: 420.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:  Colors.white),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:12,bottom:12,left: 20.w),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline_rounded, size: 30.w,color: Color(0xFF7E6EE0),),
                          SizedBox(width: 20,),
                          Text('About Us',style: TextStyle(fontFamily: 'Karla',color: Colors.black,fontWeight:FontWeight.w700 ,fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ) ,),

              SizedBox(height: 8.h),
              MaterialButton(onPressed: (){ showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(
                            Radius.circular(10.0))),
                    content: Builder(
                      builder: (context) {
                        return Container(
                          height:  500.h,
                          width: 420.w,
                          child: Column(
                            children: [
                              SizedBox(height: 28.h,),
                              Image.asset('res/images/logo.png',width: 155.w, height:115.w,),
                              SizedBox(height: 25.h,),
                              Text('Rate Us',style: TextStyle(fontFamily: 'Karla',color: Color(0xFF1D4184),fontWeight:FontWeight.w700 ,fontSize: 30.sp),),
                              SizedBox(height: 20.h,),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Color(0xFF1D4184))),),
                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Color(0xFF1D4184))),),
                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Color(0xFF1D4184))),),
                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Color(0xFF1D4184))),),
                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Color(0xFF1D4184))),),
                                  ],
                                ),),
                              SizedBox(height: 40.h,),
                              SizedBox(
                                width: double.infinity, // <-- TextField width
                                height: 100, // <-- TextField height
                                child: TextField(
                                  maxLines: null,
                                  expands: true,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(hintText: 'Enter your feedback',border: OutlineInputBorder(),),
                                ),
                              ),
                              SizedBox(height: 30.h,),
                              CustomButton(onPressed: (){}, text: 'Rate Us'),
                            ],
                          ),
                        );
                      },
                    ),
                  )
              );},
                child:  Container(
                height: 95.h,
                width: 420.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:  Colors.white),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:12,bottom:12,left: 20.w),
                      child: Row(
                        children: [
                          Icon(Icons.star_border , size: 30.w,color: Color(0xFF7E6EE0),),
                          SizedBox(width: 20,),
                          Text('Rate Us',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500 ,fontSize: 20.sp),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),),

              SizedBox(height: 8.h),
              MaterialButton(onPressed: (){
                showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(
                            Radius.circular(10.0))),
                    content: Builder(
                      builder: (context) {
                        return Container(
                          height:  450.h,
                          width: 400.w,
                          child: Column(
                            children: [
                              SizedBox(height: 28.h,),
                              Image.asset('res/images/about.png',width: 155.w, height:115.w,),
                              SizedBox(height: 20.h,),
                              Text('Logout',style: TextStyle(fontFamily: 'Karla',color: Color(0xFF1D4184),fontWeight: FontWeight.w700,fontSize: 24.sp),),
                              SizedBox(height: 20.h,),
                              Center(child: Text('Are you sure you want to logout of your account?',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Karla',color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20.sp),)),
                              SizedBox(height: 40.h,),
                              CustomButton(onPressed: (){Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context)=>   LoginScreen(), ),);}, text: 'Yes Logout'),
                              SizedBox(height: 10.h,),
                              MaterialButton(minWidth: 350.w, height: 55.h,
                                shape: RoundedRectangleBorder(
                                    side:  BorderSide(color: Colors.black,width: 2.w),
                                    borderRadius: BorderRadius.circular(100.r)), // Set the radius here
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context)=>   ProfileScreen(), ),);
                                },
                                child: const Text('Stay Login',style: TextStyle(color: Colors.black),),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
              );},
                child: Container(
                height: 95.h,
                width: 420.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:  Colors.white),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:12,bottom:12,left: 20.w),
                      child: Row(
                        children: [
                          Icon(Icons.logout_outlined, size: 30.w,color: Color(0xFF7E6EE0),),
                          SizedBox(width: 25.w,),
                          Text('Logout',style: TextStyle(fontFamily: 'Karla',color: Colors.black,fontWeight:FontWeight.w700 ,fontSize: 20.sp),),
                        ],
                      ),
                    ),
                  ],
                ),



               ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

















void  _showProfileEditModel(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    isScrollControlled: true, // Allows modal to adjust when keyboard is open
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          List<String> gender = ['Male',' Female','Other'];
          String gendervale = 'Male';
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust padding when keyboard is open
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w,bottom: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(child: PhysicalModel(color: Colors.red, clipBehavior: Clip.antiAlias, shape: BoxShape.circle, child: Image.asset('res/images/myprofilepic.png', width: 80.w, height:80.w, fit: BoxFit.cover,)),),
                        Positioned(
                          top: 10.h,
                          right: 160.w,
                          child:Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1.w,color: Colors.white),
                              color: Color(0xFFDCE8FF),
                            ),
                            child: Icon(Icons.edit,color: Color(0xFF1D4184),size: 15,),
                         ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(children: [Text('First Name',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),SizedBox(width: 130.w),Text('Last Name',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),],),
                    SizedBox(height: 12.h,),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                             // labelText: 'Talib',
                              border: OutlineInputBorder(),
                            ),
                            validator: (name){
                              if(name==null || name.isEmpty){
                                return 'Enter First name';
                              }
                              else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(name)){
                                return 'Alphabet only';
                              }
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,

                          ),
                        ),
                        SizedBox(width: 14.w), // Space between the fields
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                             // labelText: 'Jameel',
                              border: OutlineInputBorder(),
                            ),
                            validator: (name){
                              if(name==null || name.isEmpty){
                                return 'Enter First name';
                              }
                              else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(name)){
                                return 'Alphabet only';
                              }
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,

                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h,),
                    Text('Email',textAlign: TextAlign.start,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 12.h,),
                   // TextFormField(decoration: InputDecoration(hintText:'example@gmail.com',border: OutlineInputBorder()),),
                    TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),),
                      validator: (email){
                        if(email==null || email.isEmpty){
                          return 'Enter Email';
                        }
                        else if(!RegExp(r'^[\w\-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$').hasMatch(email)){
                          return 'Enter Right Email';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(height: 16.h,),
                    Text('Country',textAlign: TextAlign.start,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 12.h,),
                   // TextFormField(decoration: InputDecoration(hintText:'Select Country',border: OutlineInputBorder()),),
                   //  CountryDropdown(),
                    SizedBox(height: 16.h,),
                    Text('Gender',textAlign: TextAlign.start,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 12.h,),
                   // TextFormField(decoration: InputDecoration(hintText:'Male',border: OutlineInputBorder()),),
                   Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(10)),
                       child:  Padding(
                         padding: EdgeInsets.only(left:10 ,right: 10),
                         child: DropdownButton(
                                              hint: Text('Select Gender'),
                                              isExpanded: true,
                                              underline: SizedBox(),
                                              value: gendervale,
                                              items: gender.map((e) => DropdownMenuItem(value:e,child:Text(e))).toList() ,
                                              onChanged:(value){
                                              setState((){gendervale=value.toString();});
                                              } ,
                                            ),
                       ),),
                    SizedBox(height: 45.h,),
                    CustomButton(onPressed: (){},
                        text: 'Update'
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}


// class CountryDropdown extends StatefulWidget{
//   @override
//   State<CountryDropdown> createState() => _CountryDropdownState();
// }
//
// class _CountryDropdownState extends State<CountryDropdown> {
//   String? selectedCountry;
//
//   @override
//   Widget build(BuildContext context) {
//    return CSCPicker(
//      showStates: false,  // Hide state dropdown
//      showCities: false,  // Hide city dropdown
//      onCountryChanged: (country) {
//        setState(() {
//          selectedCountry = country;
//        });
//      },
//      dropdownDecoration: BoxDecoration(
//        borderRadius: BorderRadius.all(Radius.circular(5)),
//        border: Border.all(color: Colors.grey),
//      ),
//      countrySearchPlaceholder: "Search Country",
//      countryDropdownLabel: "Select Country",
//    );
//   }
// }



void _showSecurityModel(BuildContext context) {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibleSecond = false;
  bool _isPasswordVisibleThrid = false;
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    isScrollControlled: true, // Allows modal to adjust when keyboard is open
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust padding when keyboard is open
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(40.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h,),
                    Text('Current Password',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 10.h,),
                    TextFormField(obscureText: _isPasswordVisible, decoration: InputDecoration(hintText:'Type current password',border: OutlineInputBorder(),suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon( _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        )
                    ),),),
                    SizedBox(height: 16.h,),
                    Text('New Password',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 10.h,),
                    TextFormField(obscureText:_isPasswordVisibleSecond,decoration: InputDecoration(hintText:'Type New password',border: OutlineInputBorder(),suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isPasswordVisibleSecond = !_isPasswordVisibleSecond;
                          });
                        },
                        icon: Icon( _isPasswordVisibleSecond ? Icons.visibility : Icons.visibility_off,
                        )
                    ),),),
                    SizedBox(height: 16.h,),
                    Text('Repeat New Password',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Colors.black),),
                    SizedBox(height: 10.h,),
                    TextFormField( obscureText: _isPasswordVisibleThrid,decoration: InputDecoration(hintText:'Confirm New password',border: OutlineInputBorder(),suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isPasswordVisibleThrid = !_isPasswordVisibleThrid;
                          });
                        },
                        icon: Icon( _isPasswordVisibleThrid ? Icons.visibility : Icons.visibility_off,
                        )
                    ),),),
                    SizedBox(height: 200.h,),
                    CustomButton(onPressed: (){}, text: 'Change Password')
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}


void _showAboutUsModel(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    isScrollControlled: true, // Allows modal to adjust when keyboard is open
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust padding when keyboard is open
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(40.w),
                child: Column(
                  children: [
                    SizedBox(height: 28.h,),
                    Image.asset('res/images/logo.png',width: 155.w, height:115.w,),
                    SizedBox(height: 60.h,),
                    Center(child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when anunknown printer took a galley of type and scrambled it to make a type specimen",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 16.sp,color: Colors.black),)),
                    SizedBox(height: 60.h,),
                    Row(
                      children: [
                        Expanded(child: IconButton(onPressed: (){}, icon: SizedBox(height: 60.h,width: 180.w,child: Image.asset('res/images/pngkey 2.png'),),),),
                        Expanded(child: IconButton(onPressed: (){}, icon: SizedBox(height: 60.h,width: 180.w,child: Image.asset('res/images/pngkey 1.png'),),),),
                      ],
                    ),
                    SizedBox(height: 60.h,),
                    Center(child:  Text('Follow us',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 22.sp,color: Color(0xFF1D4184)),),),
                    SizedBox(height: 20.h,),
                    Image.asset('res/images/aboutusicons.png'),
                    SizedBox(height: 80.h,),

                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}