import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardMT extends StatelessWidget {
  final bool isUpComing;
  final String name;
  final String place;
  final String? date;
  final String time;
  final String mainBtn;
  final String secondBtn;
  final mainColorText = 0xff573926;

  const CardMT({
    super.key,
    required this.name,
    this.date,
    required this.place,
    required this.time,
    required this.mainBtn,
    required this.secondBtn,
    required this.isUpComing,
  });
  final bgCard = 0xffFEF3E7;
  final iconColor = 0xffD6CCC6;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 171.h,
      decoration: BoxDecoration(
        color: Color(bgCard),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            isUpComing
                ? Text(
                    "Upcoming Session",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(mainColorText),
                    ),
                  )
                : Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(bgCard),
                        child: Icon(Icons.person, size: 18.w),
                      ),
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              color: Color(mainColorText),
                              fontSize: 17.sp,
                            ),
                          ),
                          Text(
                            place,
                            style: TextStyle(color: Color(mainColorText)),
                          ),
                        ],
                      ),
                    ],
                  ),
            isUpComing
                ? Text(place, style: TextStyle(color: Color(mainColorText)))
                : const Divider(color: Color(0xffD6CCC6)),
          
          isUpComing ? Text(time, style: TextStyle(color: Color(mainColorText),fontWeight: FontWeight.bold, fontSize: 17),) : Row(
            children: [
              Icon(Icons.calendar_month, )
            ],
          )
          ],
        ),
      ),
    );
  }
}
