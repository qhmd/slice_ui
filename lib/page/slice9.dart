import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slicing_1/page/reusable/card_faq.dart';

class Slice9 extends StatefulWidget {
  const Slice9({super.key});

  @override
  State<Slice9> createState() => _Slice9State();
}

class _Slice9State extends State<Slice9> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF54D4D),
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: Text(
            "Help Centre",
            style: TextStyle(fontSize: 20.sp, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: RichText(
                      text: TextSpan(
                        text: "Hallo Arief\n",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xFF2F2F2F),
                          height: 1.4,
                        ),
                        children: [TextSpan(text: "What can i help you ?")],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, offset: Offset(0, 3.w)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        // hintText: "Search",
                        hintStyle: TextStyle(color: Color(0xffD7D7D7)),
                        prefixIconConstraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 0,
                        ),
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Icon(
                            Icons.search,
                            color: Color(0xffD7D7D7),
                            size: 30.w,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD7D7D7)),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "You can search some keywoard from your problem for faster solution you might have",
                    style: TextStyle(fontSize: 13.sp),
                  ),
                  SizedBox(height: 30.h),
                  Text("Frequently Asked", style: TextStyle(fontSize: 16.sp)),
                  SizedBox(height: 20.h),
                  CardFaq(
                    title: "How do i create account",
                    desc:
                        "You can create a Smartpay account by: download and open the smartp and open the smartpay applicatay application first then open the smartpay application first then selec",
                  ),
                  SizedBox(height: 20.h),
                  CardFaq(
                    title: "How to create a card for transaction",
                    desc:
                        "You can create a Smartpay account by: download and open the smartp and open the smartpay applicatay application first then open the smartpay application first then selec",
                  ),
                  SizedBox(height: 20.h),
                  CardFaq(
                    title: "How to top up in this app",
                    desc:
                        "You can create a Smartpay account by: download and open the smartp and open the smartpay applicatay application first then open the smartpay application first then selec",
                  ),
                  SizedBox(height: 30.h),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF54D4D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.zero,
                        ),
                      ),
                      child: Text(
                        "Chat with us",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
