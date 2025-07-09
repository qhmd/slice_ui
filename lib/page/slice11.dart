import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slicing_1/page/reusable/cardIcon.dart';
import 'package:slicing_1/page/reusable/cardmh.dart';
import 'package:slicing_1/page/slice11cnt.dart';

class Slice11 extends StatefulWidget {
  const Slice11({super.key});

  @override
  State<Slice11> createState() => _Slice11State();
}

class _Slice11State extends State<Slice11> {
  bool isLoading = false;
  bool isHiddenPw = true;

  final _key = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> sendData() async {
    setState(() {
      isLoading = true;
    });
    print("ini ${isLoading}");
    if (_key.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;
      await Future.delayed(Duration(seconds: 4));
      print("selesai");
      setState(() {
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  final primary = 0xff471AA0;
  final borderColor = 0xff9747FF;
  final btnColor = 0xffBB84E8;
  @override
  Widget build(BuildContext context) {
    // size icon = 129
    // sign in = 30 bold
    // forgor pw = 15 borderColor
    // Or sign in with 15
    // dont have a accout 15 / sign up (bold)

    return SafeArea(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logomls.png"),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(primary),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Form(
                    key: _key,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "email tidak boleh kosong";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Email or user Name",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(66, 0, 0, 0),
                            ),
                            prefixIcon: Icon(
                              Icons.person_outline_rounded,
                              color: Color(primary),
                              size: 35.w,
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.h,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(13.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(13.r),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password tidak boleh kosong";
                            } else if (value.length < 6) {
                              return "password harus minimal 6 karakter";
                            } else {
                              return null;
                            }
                          },
                          obscureText: isHiddenPw,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(66, 0, 0, 0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: Color(primary),
                                size: 20.w,
                              ),
                              onPressed: () {
                                setState(() {
                                  isHiddenPw = !isHiddenPw;
                                });
                              },
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(primary),
                              size: 35.w,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(primary),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(primary),
                                width: 2,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        // to forgot pw
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Color(primary),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        sendData();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(btnColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(13.r),
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Text(
                    "Or sign in with",
                    style: TextStyle(color: Color(primary), fontSize: 15.sp),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardIcon(icon: "assets/google_login.png"),
                      SizedBox(width: 20.w),
                      CardIcon(icon: "assets/Facebook_Logo_Primary.png"),
                      SizedBox(width: 20.w),
                      CardIcon(icon: "assets/twitter.png"),
                      SizedBox(width: 20.w),
                      CardIcon(icon: "assets/LI-In-Bug.png"),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  RichText(
                    text: TextSpan(
                      text: "Don't have a account ?",
                      style: TextStyle(color: Color(primary)),
                      children: [
                        TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          text: " Sign up",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) => const Slice11Cnt(),
                                  transitionsBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                        child,
                                      ) {
                                        const begin = Offset(1.0, 0);
                                        const end = Offset.zero;
                                        final tween = Tween(
                                          begin: begin,
                                          end: end,
                                        );
                                        final offsetAnimation = animation.drive(
                                          tween,
                                        );

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                ),
                              );
                              print("when sign up clicked");
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isLoading)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(26, 0, 0, 0),
                ),
                child: Center(
                  child: CircularProgressIndicator(color: Color(primary)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
