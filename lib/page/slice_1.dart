import 'package:flutter/material.dart';

class Slice1 extends StatefulWidget {
  const Slice1({super.key});

  @override
  State<Slice1> createState() => _Slice1State();
}

class _Slice1State extends State<Slice1> {
  bool isLeftSelected = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -280,
              left: -120,
              child: ClipOval(
                child: Container(
                  height: 550,
                  width: 550,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 235, 44, 30),
                        const Color.fromARGB(255, 165, 53, 45),
                      ],
                      stops: [0, 1],
                      begin: Alignment.center,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: -20,
              top: 50,
              child: Image.asset('assets/image.png', width: 300),
            ),
            Positioned(
              left: 100,
              top: 100,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                  children: [
                    TextSpan(text: 'Eat.\n'),
                    TextSpan(text: '      Fun'),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.5),
              child: Container(
                height: 500,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.black, width: 1.5),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/platter.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 215, 135, 1),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: Color.fromARGB(255, 190, 1, 39),
                          width: 1.5,
                        ),
                      ),
                      child: Stack(
                        children: [
                          AnimatedAlign(
                            alignment: isLeftSelected
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            duration: const Duration(milliseconds: 250),
                            child: FractionallySizedBox(
                              widthFactor: 0.55,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 190, 1, 39),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isLeftSelected = true;
                                    });
                                  },
                                  child: Center(
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(
                                        color: isLeftSelected
                                            ? Colors.white
                                            : Color.fromARGB(255, 190, 1, 39),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isLeftSelected = false;
                                    });
                                  },
                                  child: Center(
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                        color: !isLeftSelected
                                            ? Colors.white
                                            : Color.fromARGB(255, 190, 1, 39),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Enter email or username",
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(hintText: "Password"),
                          ),
                          SizedBox(height: 15),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 190, 1, 39),
                              minimumSize: Size(120, 30),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "OR",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/Facebook_Logo_Primary.png',
                                width: 40,
                              ),
                              Image.asset('assets/google_login.png', width: 40),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
