import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SliceState();
}

class _SliceState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset('assets/smile_person.png', fit: BoxFit.fill),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 0, 177, 65).withValues(alpha: 0.7),
                Color.fromARGB(255, 0, 177, 65).withValues(alpha: 1),
              ],
              stops: [0.5, 1],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 60,),
              Image.asset("assets/logo_h.png"),
              SizedBox(height: 30,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "HOPE FOR\n",
                  style: TextStyle(
                    fontSize: 36,
                    height: 1,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "HUMANITY",
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                text: "Welcome to\n",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25,
                  height: 1,
                  color: Colors.black
                ),
                children: [TextSpan(
                  text: "Hope for humanity"
                )]
              ))
            ],
          ),
        ),
      ],
    );
  }
}
