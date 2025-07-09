import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class Slice11Cnt extends StatefulWidget {
  const Slice11Cnt({super.key});

  @override
  State<Slice11Cnt> createState() => _Slice11CntState();
}

class _Slice11CntState extends State<Slice11Cnt> {
  final primary = 0xff471AA0;

  final borderColor = 0xff9747FF;

  final btnColor = 0xffBB84E8;

  final _key = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios, color: Color(primary)),
                        Text("Back", style: TextStyle(color: Color(primary))),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.h),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Color(primary),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_2_outlined,
                              color: Color(primary),
                            ),
                            hintText: "Full name",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(77, 0, 0, 0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 3,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 35.h),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(primary),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(77, 0, 0, 0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 3,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 35.h),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(primary),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(77, 0, 0, 0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 3,
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye_outlined),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 35.h),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(primary),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye_outlined),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 3,
                              ),
                            ),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(77, 0, 0, 0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.r),
                              borderSide: BorderSide(
                                color: Color(borderColor),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 65.h),
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(btnColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 100.h),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account ? ",
                            style: TextStyle(color: Color(primary)),
                            children: [
                              TextSpan(
                                text: "Sign in",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  Navigator.pop(context);
                                }
                              )
                            ]
                          )
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -70,
              right: 0,
              child: Container(
                width: 128.w,
                height: 128.h,
                decoration: BoxDecoration(
                  color: Color(0xff471AA0),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -40,
              right: -70,
              child: Container(
                width: 142.w,
                height: 142.h,
                decoration: BoxDecoration(
                  color: Color(0xffBB84E8),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
