import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Slice2Ctu extends StatefulWidget {
  const Slice2Ctu({super.key});

  @override
  State<Slice2Ctu> createState() => _Slice2CtuState();
}

class _Slice2CtuState extends State<Slice2Ctu> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_sharp),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Image.asset('assets/logo_h.png', height: 25),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Create your account",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 27),
                    ),
                    SizedBox(height: 20),
                    Text("Name", style: TextStyle(fontWeight: FontWeight.w300)),
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 0, 177, 65),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        fillColor: Color(0x20888888),
                        filled: true,
                        hintText: "ex : smith john",
                        hintStyle: TextStyle(color: Color(0x88888888)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 177, 65),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.w300),
                      textAlign: TextAlign.start,
                    ),
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 0, 177, 65),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x20888888),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 177, 65),
                          ),
                        ),
                        hintText: "ex : jhso.smith@gmail.com",
                        hintStyle: TextStyle(color: Color(0x88888888)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 0, 177, 65),
                      decoration: InputDecoration(
                        fillColor: Color(0x20888888),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 177, 65),
                          ),
                        ),
                        hintText: "*********",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Confirm Password",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 0, 177, 65),
                      decoration: InputDecoration(
                        fillColor: Color(0x20888888),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 177, 65),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          visualDensity: VisualDensity.compact,
                          activeColor: Color.fromARGB(255, 0, 177, 65),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: 'i understand the',
                            children: [
                              TextSpan(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 177, 65),
                                ),
                                text: " terms & policy",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("on click");
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(0, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.horizontal(
                              left: Radius.circular(8),
                              right: Radius.circular(8),
                            ),
                          ),
                          backgroundColor: Color.fromARGB(255, 0, 177, 65),
                          foregroundColor: Colors.white,
                        ),
                        child: Text("SIGN UP"),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "or sign up with",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5),
                            ),
                          ),
                          child: Image.asset(
                            "assets/google_login.png",
                            width: 50,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5),
                            ),
                          ),
                          child: Image.asset(
                            "assets/Facebook_Logo_Primary.png",
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5),
                            ),
                          ),
                          child: Image.asset("assets/twitter.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Have account already?",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: " SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 0, 177, 65),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
