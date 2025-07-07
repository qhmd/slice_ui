import 'package:flutter/material.dart';
import 'package:slicing_1/page/slice_2_continues.dart';

class Slice2 extends StatefulWidget {
  const Slice2({super.key});

  @override
  State<Slice2> createState() => _Slice2State();
}

class _Slice2State extends State<Slice2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loading = false;

  Future<void> _login() async {
    setState(() {
      _loading = true;
    });
    if (_formKey.currentState!.validate()) {
      print("isi di email ${_emailController.text}");
      print("isi di pass  ${_passwordController.text}");
      final email = _emailController.text;
      final pass = _passwordController.text;
      await handleLoading();
      print("berhasil login");
    }
    setState(() {
      _loading = false;
    });
  }

  Future<void> handleLoading() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150, left: 50, right: 50),
              child: Form(
                key: _formKey,
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
                    TextFormField(
                      controller: _emailController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email wajib diisi';
                        } else {
                          return null;
                        }
                      },
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
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 0, 177, 65),
                      controller: _passwordController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password wajib diisi';
                        } else if (value.length <= 6) {
                          return 'Password minimal 6';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 40),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          _login();
                        },
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
                          child: Image.asset(
                            'assets/google_login.png',
                            width: 50,
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        Slice2Ctu(),
                                transitionsBuilder:
                                    (
                                      context,
                                      animation,
                                      secondaryAnimation,
                                      child,
                                    ) {
                                      const begin = Offset(1.0, 0);
                                      const end = Offset.zero;
                                      final tween = Tween(begin: begin, end: end);
                                      final offsetAnimation = animation.drive(
                                        tween,
                                      );
      
                                      return SlideTransition(
                                        position: offsetAnimation,
                                        child: child,
                                      );
                                    },
                              ),
                            );
                          },
                          child: Text(
                            " SIGN UP",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF00B140),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            if (_loading)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withValues(alpha: 0.5),
                  child: Center(
                    child: CircularProgressIndicator(color: Color(0xFF00B140)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
