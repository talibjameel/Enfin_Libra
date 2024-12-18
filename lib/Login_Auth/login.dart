import 'package:enfin_libre/custom_items.dart';
import 'package:enfin_libre/Login_Auth/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enfin_libre/main.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isPasswordVisible=false;
  bool checkboxValue=false;
  bool isLoading = false;


  Signin() async{
    setState(() {
      isLoading = true;
    });
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
    }on FirebaseException catch(e){
      Get.snackbar('Recheck or Forget Your Password', e.code);
    }catch (e){
      Get.snackbar('Error Message', e.toString());
    }
    setState(() {
      isLoading =false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Top Image Section
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r),
                ),
                child: Image.asset(
                  'res/images/signup_logo.png', // Replace with your image
                  height: 330.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Login Form Section
            Positioned(
              top: 260.h, // Adjust this to place the form correctly
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(40.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontFamily: 'Karla',
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1D4184),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Hey there! Continue your growth journey',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xFF000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.h),
                    // Email Field
                    TextFormField(
                      controller: email,
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
                      controller: password,
                      obscureText: _isPasswordVisible,
                      decoration:  InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: (){
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                            icon: Icon( _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            )
                        ),
                      ),
                      validator: (password) => password!.length < 8? 'password should be 8 digit' : null,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(height: 22.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: checkboxValue,
                              onChanged: (val) {
                                if(checkboxValue == false){
                                  setState(() {
                                    checkboxValue= true;
                                  });
                                }else if(checkboxValue == true){
                                  setState(() {
                                    checkboxValue = false;
                                  });
                                }
                              },
                            ),
                            const Text('Remember me'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                               _showForgotPasswordModal(context); // Call the modal function
                          },
                          child: const Text('Forgot password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),

                    CustomButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainPage(),),);
                    }, text: 'Login'),
                    SizedBox(height: 30.h),
                    Column(
                      children: [
                        const Text('Or continue with'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           CustomIconButton(onPressed: (){
                             singInWithGoogle();
                           }, Imagepath: 'res/images/google.png', heigth: 70.h, width: 100.w,),
                           CustomIconButton(onPressed: (){}, Imagepath: 'res/images/apple.png', heigth: 70.h, width: 100.w,),
                           CustomIconButton(onPressed: (){}, Imagepath: 'res/images/facebook.png', heigth: 70.h, width: 100.w,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> const SignUpScreen(),),);
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.orange),
                          ),
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
void _showForgotPasswordModal(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  bool isCodeSent = false; // To manage whether to show the code verification screen
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
                child: isCodeSent
                    ? Column(
                  mainAxisSize: MainAxisSize.min, // Adjust the modal size based on content
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Verify Code",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: Text(
                        "Enter the 4-digit code we sent to your email.",
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),

                    // Code Verification UI based on image design
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 44.w,
                          child: const TextField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(),

                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 30.h),
                      const Text('Didnt get the code?'),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          // Resend code functionality
                        },
                        child:  const Text(
                          " Resend",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),


                    SizedBox(height: 40.h),
                    Center(
                        child: CustomButton(onPressed: (){
                          Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> const LoginScreen(),),);
                        }, text: 'Confirm')
                    ),
                  ],
                )
                    : Column(
                  mainAxisSize: MainAxisSize.min, // Adjust the modal size based on content
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Enter your email for the verification process. We will send a 4-digit code to your email.",
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 57.h),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Enter your email",
                      ),
                    ),
                    SizedBox(height: 96.h),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (
                          emailController.text.isNotEmpty &&
                              RegExp(r'^[\w\-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$')
                                  .hasMatch(emailController.text)) {
                            setState(() {
                              isCodeSent = true; // Switch to code input screen
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Please enter a valid email")),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1D4184), // Background color
                          minimumSize: Size(double.infinity, 50.h), // Full-width button
                        ),
                        child: const Text("Continue",style: TextStyle(color: Colors.white),),
                      ),
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