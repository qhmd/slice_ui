import 'package:flutter/material.dart';

class Slice4 extends StatefulWidget {
  const Slice4({super.key});

  @override
  State<Slice4> createState() => Slice4State();
}

class Slice4State extends State<Slice4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          "Input Jumlah Saldo",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 231, 231, 231),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      // padding: ,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0, 0.88],
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(15),
                          right: Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Rp 1.000.000",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                              stops: [0, 1],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text("Rp 500.000"),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                              stops: [0, 1],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text("Rp 700.000"),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Color(0xffB0D6FF)),
                            gradient: LinearGradient(
                              colors: [Colors.white, Color(0xffBEDCF1)],
                              stops: [0, 1],
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                            ),
                          ),
                          child: Text("Rp 1.000.000"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                              stops: [0, 1],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text("Rp 500.000"),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                              stops: [0, 1],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text("Rp 700.000"),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [Color(0xffE2E2E2), Color(0xffF7F7F8)],
                              stops: [0, 1],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Text("Rp 1.000.000"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 3.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(196, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff007AFF)),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.money, color: Color(0xff007AFF)),
                        title: Text(
                          "Ganti Metode Pembayaran",
                          style: TextStyle(color: Color(0xff007AFF)),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 30,
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Rincian Transfer", textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xffEBEBED),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Color(0xffEBEBED), width: 5),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Sumber Dana"), Text("Bank BRI")],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Akun Tujuan"),
                              Text(
                                "Tabungan Fintrack\n22299911133",
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jumlah Transfer"),
                              Text("Rp1.000.000"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff007AFF),
                        padding: EdgeInsets.all(0),
                      ),
                      child: ListTile(
                        leading: Text(
                          "Transfer",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        title: Text(
                          "Rp. 1.000.000",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
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
