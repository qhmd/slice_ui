import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Slice6 extends StatelessWidget {
  const Slice6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text("Input Saldo Anda")),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(0xffEBF9EE),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff34C759),
                        ),
                        child: Icon(
                          Icons.playlist_add_check_circle_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Rp 1.000.000\n",
                      style: TextStyle(
                        color: Color(0xff007AFF),
                        fontSize: 28,
                        height: 1.8,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Isi Saldo",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status"),
                      Text(
                        "Berhasil",
                        style: TextStyle(
                          color: Color(0xff34C759),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Metode pembayaran"), Text("Bank BRI")],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Waktu"), Text("12:24")],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Tanggal"), Text("16 Aug 2024")],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("ID Transaksi"), Text("1231231231231234412")],
                  ),
                  SizedBox(height: 20),
                  Dash(
                    length: 350,
                    direction: Axis.horizontal,
                    dashLength: 30,
                    dashColor: Color(0xffC0C0C0),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Jumlah"), Text("Rp 1.000.000")],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Biaya"), Text("Gratis!")],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rp 1.000.000",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(0, 50),
                backgroundColor: Color(0xff007AFF)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Kembali ke home",style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white,)
                ],
              )),
          )
        ],
      ),
    );
  }
}
