import 'package:flutter/material.dart';

class Slice8 extends StatefulWidget {
  const Slice8({super.key});

  @override
  State<Slice8> createState() => _Slice8State();
}

class _Slice8State extends State<Slice8> {
  bool dropDown1 = false;
  bool dropDown2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF54D4D),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          "From e-Wallet",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: const Color(0xFFF54D4D)),
              ),
              Flexible(flex: 9, child: Container(color: Colors.white)),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 2), color: Colors.black12),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 20,right: 20, top: 10,bottom: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("SELECTED"),
                            GestureDetector(
                              onTap: () {
                                // to change
                              },
                              child: Row(
                                children: [
                                  const Text("Change"),
                                  const Icon(Icons.keyboard_arrow_right),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            "Logo Wallet",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Yout ID Number"),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xFFD7D7D7)),
                          ),
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "081221447884",
                                  style: TextStyle(
                                    color: Color(0xFFF54D4D),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                VerticalDivider(
                                  width: 1,
                                  color: Color(0xFF929292),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.copy_all,
                                      color: Color(0xFF929292),
                                    ),
                                    Text(
                                      "COPY",
                                      style: TextStyle(
                                        color: Color(0xFF929292),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("INFORMATON", textAlign: TextAlign.start),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 13,height: 2),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Account name"),
                              Text("Arifin Wahdan Alfhat"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Minimal Amount"),
                              Text("Rp. 10.000"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("INTRUCTIONS", textAlign: TextAlign.start),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          dropDown1 = !dropDown1;
                          print(dropDown1);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                    width: 0.1,
                                    color: Color(0xFF929292),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("From other wallet Top up"),
                                  dropDown1
                                      ? const Icon(
                                          Icons.keyboard_arrow_up_rounded,
                                          size: 40,
                                          color: Color(0xFF929292),
                                        )
                                      : const Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          size: 40,
                                          color: Color(0xFF929292),
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  if (dropDown1)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
                      child: DefaultTextStyle(
                        style: TextStyle(color: Color(0xFF929292), height: 1.4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "1. insert your card and enter your PIN",
                            ),
                            const Text("2. select transfert in yout menu"),
                            const Text("3. Choose the source account"),
                            const Text(
                              "4. Enter reciepsent virtual safasa gsdgsdgas sdag sdgsad as",
                            ),
                            const Text("5. Confirm the transefer details"),
                            const Text("6. op receive or not"),
                            const Text("7. verify the transfer account"),
                            const Text("7. verify the transfer account"),
                            const Text("8. collecto yout card ande recevied"),
                          ],
                        ),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          dropDown2 = !dropDown2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF929292),
                              width: 0.4,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Term & Conditions"),
                            dropDown2
                                ? const Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    color: Color(0xFF929292),
                                    size: 40,
                                  )
                                : const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 40,
                                    color: Color(0xFF929292),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (dropDown2)
                    DefaultTextStyle(
                      style: TextStyle(color: Color(0xFF929292), height: 1.4),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "1. insert your card and enter your PIN",
                            ),
                            const Text("2. select transfert in yout menu"),
                            const Text("3. Choose the source account"),
                            const Text(
                              "4. Enter reciepsent virtual safasa gsdgsdgas sdag sdgsad as",
                            ),
                            const Text("5. Confirm the transefer details"),
                            const Text("6. op receive or not"),
                            const Text("7. verify the transfer account"),
                            const Text("7. verify the transfer account"),
                            const Text("8. collecto yout card ande recevied"),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
