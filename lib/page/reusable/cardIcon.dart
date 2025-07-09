import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardIcon extends StatelessWidget {
  final dynamic icon;
  final double? changePadding;
  const CardIcon({super.key, required this.icon, this.changePadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      padding: changePadding != null ? EdgeInsets.all(changePadding!.w) : EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Colors.black12
          )
        ]
      ),
      // child: Icon(icon,size: sizeIcon,),
      child: Image.asset(icon),
    );
  }
}
