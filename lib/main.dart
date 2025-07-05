import 'package:flutter/material.dart';
import 'package:slicing_1/page/slice_1.dart';
import 'package:slicing_1/page/slice_2.dart';
import 'package:slicing_1/page/slice_3.dart';
import 'package:slicing_1/page/slide.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _page = [Slice1(), Slice2(), Slide(), Slice3()];
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Slice1"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Slice2"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Slice for 2"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Slice for 3"),
          ],
        ),
      ),
    );
  }
}
