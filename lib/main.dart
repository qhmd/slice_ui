import 'package:flutter/material.dart';
import 'package:slicing_1/page/slice10.dart';
import 'package:slicing_1/page/slice11.dart';
import 'package:slicing_1/page/slice9.dart';
import 'package:slicing_1/page/slice_1.dart';
import 'package:slicing_1/page/slice_2.dart';
import 'package:slicing_1/page/slice_3.dart';
import 'package:slicing_1/page/slice_4.dart';
import 'package:slicing_1/page/slice_5.dart';
import 'package:slicing_1/page/slide.dart';
import 'package:slicing_1/page/slide7.dart';
import 'package:slicing_1/page/slide8.dart';
import 'package:slicing_1/page/slide_6.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _page = [
    Slice1(),
    Slice2(),
    Slide(),
    Slice3(),
    Slice4(),
    Slice5(),
    Slice6(),
    Slide7(),
    Slice8(),
    Slice9(),
    Slice10(),
    Slice11(),
  ];
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomInset: false,

            body: _page[_indexPage],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey,
              currentIndex: _indexPage,
              onTap: (value) {
                setState(() {
                  _indexPage = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice1",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice2",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 2",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 3",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 4",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 5",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 6",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 7",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 8",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 9",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 10",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Slice for 11",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
