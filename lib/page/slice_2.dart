import 'package:flutter/material.dart';

class Slice2 extends StatefulWidget {
  const Slice2({super.key});

  @override
  State<Slice2> createState() => _Slice2State();
}

class _Slice2State extends State<Slice2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 150, left: 50, right: 50),
        child: Column(
          children: [
            Image.asset('assets/logo_h.png', width: 50, height: 50),
            SizedBox(height: 50),
            Text(
              "Sign in your account",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 27),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.w300),
                textAlign: TextAlign.start,
              ),
            ),
            TextField(
              cursorColor: Color.fromARGB(255, 0, 177, 65),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 177, 65),
                  ),
                ),
                hintText: "ex.jhon.smith@gmail.com",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                fillColor: Color(0x20888888),
                filled: true,
                hintStyle: TextStyle(color: Color(0x88888888)),
                focusColor: Colors.amber,
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.w300),
                textAlign: TextAlign.start,
              ),
            ),
            TextField(
              cursorColor: Color.fromARGB(255, 0, 177, 65),
              
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 177, 65),
                  ),
                ),
                hintText: "*********",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fillColor: Color(0x20888888),
                filled: true,
                hintStyle: TextStyle(color: Color(0x88888888)),
                focusColor: Colors.amber,
              ),
            ),
            SizedBox(height: 40),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.horizontal(
                      right: Radius.circular(8),
                      left: Radius.circular(8),
                    ),
                  ),
                  minimumSize: Size(0, 45),
                  backgroundColor: Color(0xFF00B140),
                  foregroundColor: Colors.white,
                ),
                child: Text("SIGN IN"),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "or sign in with",
              style: TextStyle(fontWeight: FontWeight.w300),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 90,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset('assets/google_login.png', width: 50),
                ),
                Container(
                  width: 90,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    'assets/Facebook_Logo_Primary.png',
                    width: 50,
                  ),
                ),
                Container(
                  width: 90,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset('assets/twitter.png', width: 50),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have a account?",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                Text(
                  " SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF00B140),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
