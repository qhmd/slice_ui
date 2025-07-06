import 'package:flutter/material.dart';
import 'dart:math' as math;

class Slide7 extends StatelessWidget {
  const Slide7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 3, child: Container(color: Color(0xFFF54D4D))),
                Expanded(flex: 9, child: Container(color: Colors.white)),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:50,),
                  Text(
                    "E-Recief",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Roboto",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x40000000),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF54D4D),
                              ),
                              child: Transform.rotate(
                                angle: math.pi / 9,
                                child: Icon(
                                  Icons.bolt,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              ),
                            ),
                            const  SizedBox(width: 10),
                            const Text(
                              "Logoipsum",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Transaction Success!",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "12 August 2023 21.58 GMT+7",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF929292),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Rp241.234",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Recipient",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                            const Text(
                              "ARIEF WAHDANI  ALFHAT",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Recipient",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                            const Text(
                              "ARIEF WAHDANI  ALFHAT",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Bank Destination",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                            const Text("BCA", style: TextStyle(fontFamily: "Roboto")),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Account Number",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                            const Text(
                              "8930452013",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Transaction ID",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                            const Text(
                              "2435GASFD7523",
                              style: TextStyle(fontFamily: "Roboto"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Note", style: TextStyle(fontFamily: "Roboto")),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.download, color: Colors.blue),
                                const SizedBox(width: 10),
                                const Text(
                                  "Download",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.share_rounded, color: Colors.blue),
                                const SizedBox(width: 10),
                                const Text(
                                  "Share",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF54D4D),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.zero))
                          ) , child: const Text("HOME", style: TextStyle(color: Colors.white, fontSize: 17),)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12 ),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: Color(0xffD7D7D7)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x40000000),
                            spreadRadius: 0.1,
                            blurRadius: 0.1,
                          )
                        ]
                      ),
                      child: const Text("Need help ?"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
