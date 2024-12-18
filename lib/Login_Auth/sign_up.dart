import 'package:enfin_libre/Login_Auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../custom_items.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool checkboxValue=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius:  BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r),
                ),
                child: Image.asset(
                  'res/images/signup_logo.png',
                  height: 330.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 260.h, // Adjust this to place the form correctly
              left: 0,
              right: 0,
             // bottom: 0,
              child: Container(
                padding:  EdgeInsets.all(40.w),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),


                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Create new Account',
                      style: TextStyle(
                        fontFamily: 'Karla',
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1D4184),
                      ),
                    ),

                     SizedBox(height: 24.h),

                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'First Name',
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
                              labelText: 'Last Name',
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

                     SizedBox(height: 20.h),

                    // Email Field
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your email',
                      ),
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

                     SizedBox(height: 20.h),

                    TextFormField(
                      obscureText: _isPasswordVisible,
                      decoration:  InputDecoration(
                        labelText: 'Create Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Switch between visibility and visibility_off icons
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            // Toggle the visibility state
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      validator: (password) => password!.length < 8? 'Password should be 8 digit' : null,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),

                     SizedBox(height: 28.h),

                        Row(
                          children: [
                            Checkbox(value: checkboxValue, onChanged: (val) {
                              if(checkboxValue == false){
                                setState(() {
                                  checkboxValue = true;
                                });
                              }else if(checkboxValue == true){
                                setState(() {
                                  checkboxValue = false;
                                });
                              }
                            }),
                            const Text('I agree to '),
                            TextButton(onPressed: (){},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(0, 0),
                              ),
                              child:const Text('Term & Condition'),),

                          ],
                        ),



                     SizedBox(height: 20.h),

                    // Login Button
                    CustomButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()),);
                    },
                        text: 'Sign up'
                    ),

                     SizedBox(height: 16.h),

                    // Social Media Buttons
                    Column(
                      children: [
                        const Text('Or continue with'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(onPressed: (){singInWithGoogle();}, Imagepath: 'res/images/google.png', heigth: 70.h, width: 100.w,),
                            CustomIconButton(onPressed: (){}, Imagepath: 'res/images/apple.png', heigth: 70.h, width: 100.w,),
                            CustomIconButton(onPressed: (){}, Imagepath: 'res/images/facebook.png', heigth: 70.h, width: 100.w,),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already Have an Account"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> const LoginScreen(),),);
                          },
                          child: const Text('Sign In',style: TextStyle(color: Colors.orange),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
singInWithGoogle() async {

  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

 AuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleAuth?.idToken,
    accessToken: googleAuth?.accessToken,
  );

 UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  
  print(userCredential.user?.displayName);
}