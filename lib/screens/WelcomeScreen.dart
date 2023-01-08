import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdproject/main.dart';
import 'package:thirdproject/screens/homescreen.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  bool animebtn = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Lets begin..',
                        style: GoogleFonts.raleway(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ])),
                  ),
                  Container(
                    width: 100,
                    height: 200,
                    child: RiveAnimation.asset(
                      'assets/images/coffee.riv',
                      artboard: "New Artboard",
                      stateMachines: ["State Machine 1"],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'With a Cup of  ',
                          style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                        TextSpan(
                          text: 'Coffeee!',
                          style: GoogleFonts.raleway(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffA25D37)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Get the cup filled of your choice to stay focused and awake.Get Flavourist Coffees Smooth Out Your Day ..',
                      style: GoogleFonts.raleway(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30,
                      ),
                    ),
                  ))),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        animebtn = true;
                      });
                      await Future.delayed(Duration(milliseconds: 820));
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 820),
                      height: 50,
                      width: animebtn ? 50 : 120,
                      alignment: Alignment.center,
                      // ignore: sort_child_properties_last
                      child: animebtn
                          ? Icon(
                              Icons.done,
                              color: Color(0xffA25D37),
                            )
                          : RichText(
                              text: TextSpan(children: [
                              TextSpan(
                                text: 'Jump ',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              TextSpan(
                                text: 'in',
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xffA25D37)),
                              )
                            ])),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(animebtn ? 50 : 0),
                          bottomRight: Radius.circular(animebtn ? 50 : 0),
                          topRight: Radius.circular(animebtn ? 50 : 10),
                          bottomLeft: Radius.circular(animebtn ? 50 : 10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
