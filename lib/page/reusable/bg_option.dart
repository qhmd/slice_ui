import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bgOption extends StatelessWidget {
  final icon;
  final primaryColor = 0xff115DA9;
  final double sizeIcon;
  final String text;
  const bgOption({super.key, required this.icon, required this.sizeIcon, required this.text });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: Color(primaryColor),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Icon(icon, size: sizeIcon,color: Colors.white,),
        ),
        SizedBox(height: 8.h,),
        Text(text, style: TextStyle(color: Color(primaryColor), fontSize: 14.sp),)
      ],
    );
  }
}