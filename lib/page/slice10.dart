import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:slicing_1/page/reusable/bg_option.dart';

class Slice10 extends StatelessWidget {
  const Slice10({super.key});
  final primaryColor = 0xff115DA9;
  final secondColor = 0xffCCE5FF;
  final unselectOption = 0xff949494;
  final bgPromo = 0xffF4F5F6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                width: 375.w,
                height: 205.h,
                decoration: BoxDecoration(
                  color: Color(secondColor),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(440.r, 100.r),
                    bottomRight: Radius.elliptical(440.r, 100.r),
                  ),
                ),
              ),
              Container(
                width: 375.w,
                height: 200.h,
                decoration: BoxDecoration(
                  color: Color(primaryColor),
                  shape: BoxShape.rectangle,
                  border: Border(bottom: BorderSide(color: Colors.black)),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(500.r, 80.r),
                    bottomRight: Radius.elliptical(500.r, 80.r),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 15.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.ac_unit,
                                    color: Colors.white,
                                    size: 30.w,
                                  ),
                                  Text(
                                    "BCA",
                                    style: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    size: 30.w,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10.w),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: Icon(Icons.person),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Total Balance",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rp", style: TextStyle(fontSize: 17.sp)),
                              Text(
                                " 1.234.567,90",
                                style: TextStyle(fontSize: 30.sp),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 65.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DefaultTextStyle(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(unselectOption),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Shortcut",
                                    style: TextStyle(color: Color(primaryColor)),
                                  ),
                                  SizedBox(width: 15),
                                  Text("Bills"),
                                  SizedBox(width: 15),
                                  Text("Commerce"),
                                ],
                              ),
                            ),
                            Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(primaryColor),
                              ),
                              child: Icon(Icons.pentagon, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            bgOption(
                              icon: Icons.transfer_within_a_station,
                              sizeIcon: 40.w,
                              text: "Transfer",
                            ),
                            bgOption(
                              icon: Icons.folder_zip_sharp,
                              sizeIcon: 40.w,
                              text: "Flazz",
                            ),
                            bgOption(
                              icon: Icons.card_travel_sharp,
                              sizeIcon: 40.w,
                              text: "Cardless",
                            ),
                            bgOption(
                              icon: Icons.more_vert_sharp,
                              sizeIcon: 40.w,
                              text: "More",
                            ),
                          ],
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                    decoration: BoxDecoration(
                      color: Color(bgPromo),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 50.w,
                          height: 2.h,
                          decoration: BoxDecoration(color: Color(0xffC2C2C2)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Promo & Insight",
                            style: TextStyle(
                              color: Color(primaryColor),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          alignment: Alignment.center,
                          width: 340.w,
                          height: 160.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Text("Banner disini"),
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          alignment: Alignment.center,
                          width: 340.w,
                          height: 160.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Text("Banner disini"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
