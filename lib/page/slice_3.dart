import 'package:flutter/material.dart';

class Slice3 extends StatefulWidget {
  const Slice3({super.key});

  @override
  State<Slice3> createState() => Slice3State();
}

class Slice3State extends State<Slice3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 241, 241, 241),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: RichText(
                  text: TextSpan(
                    text: "Hai, ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Yusril!",
                        style: TextStyle(color: Color(0xff007AFF)),
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text("No Rekening : 22299911133"),
                    SizedBox(width: 10),
                    Icon(Icons.copy, size: 20),
                  ],
                ),
                trailing: Icon(Icons.notifications_none, size: 30),
              ),
          
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  // color: Color(0xff007AFF),
                  gradient: LinearGradient(
                    colors: [Color(0xff007AFF), Color(0xff46B7B0)],
                    stops: [0.45, 1],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(65, 0, 0, 0),
                      offset: Offset(0, 2.41),
                      blurRadius: 7.22,
                      // spreadRadius: BorderSide.strokeAlignCenter
                      // blurRadius: BouncingScrollSimulation.maxSpringTransferVelocity
                      // blurRadius: BorderSide.strokeAlignCenter
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Saldo Anda", style: TextStyle(color: Colors.white)),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 13,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "History",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text("Rp", style: TextStyle(color: Colors.white)),
                            SizedBox(width: 10),
                            Text(
                              "1.500.000",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xffE6F2FF),
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.money, color: Color(0xff007AFF), size: 20),
                            SizedBox(width: 5),
                            Text(
                              "Isi Saldo",
                              style: TextStyle(color: Color(0xff007AFF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6F2FF),
                              child: Icon(Icons.contact_emergency_sharp),
                            ),
                            Text("Transfer"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(14, 0, 0, 0),
                      blurRadius: 7.21,
                      offset: Offset(0, 2.41),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff007AFF),
                        child: Icon(Icons.add_card_sharp, color: Colors.white),
                      ),
                      title: Text(
                        "Konfirmasi Emailmu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      subtitle: Text(
                        "Verifikasi email anda untuk menjaga akun anda",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        maximumSize: Size(320, 50),
                        shadowColor: Colors.transparent,
                        backgroundColor: Color(0xffB0D6FF),
                        side: BorderSide(color: Color(0xff8AC2FF)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verifikasi Email ",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(30, 0, 0, 0),
                      offset: Offset(0, 2.41),
                      blurRadius: 7.21,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("History Transaksi"),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(33, 255, 13, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.arrow_upward,color: Colors.white,)),
                      ),
                      title: Text(
                        "Kirim uang ke John",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("12 Aug 2024 19:23"),
                      trailing: Column(
                        children: [
                          Text(
                            "-Rp 500,000",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(43, 34, 255, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.add_circle_outline_rounded,color: Colors.white,)),
                      ),
                      title: Text(
                        "tambah Saldo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("12 Aug 2024 19:23"),
                      trailing: Column(
                        children: [
                          Text(
                            "+Rp 200,000",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
