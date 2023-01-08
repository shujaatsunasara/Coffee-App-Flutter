import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdproject/vesel/coffeetile.dart';
import '../vesel/data.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var coffeeData = Data.cards;
  Widget build(BuildContext context) {
    final iskeyboard =
        MediaQuery.of(context).removeViewInsets(removeTop: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff0F151B),
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(CupertinoIcons.sidebar_left),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(CupertinoIcons.person),
          ),
        ],
      ),
      //BottomBar

      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.home,
            color: Colors.brown,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.info),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          label: '',
        ),
      ]),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Find the best coffee
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            child: RichText(
              text: TextSpan(
                  style: GoogleFonts.raleway(
                      fontSize: 35, fontWeight: FontWeight.w500),
                  children: [
                    const TextSpan(
                        text: 'pick ', style: TextStyle(color: Colors.white70)),
                    TextSpan(
                        text: ' flavourist',
                        style: GoogleFonts.yanoneKaffeesatz(
                          color: const Color(0xffA25D37),
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        )),
                    const TextSpan(
                        text: " Coffees to your taste",
                        style: TextStyle(color: Colors.white70))
                  ]),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'pick your choice..',
                hintStyle: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                prefixIcon: const Icon(CupertinoIcons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffA25D37),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffA25D37),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Text(
                    'Recommendations',
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffA25D37)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              clipBehavior: Clip.hardEdge,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Stack(children: [
                  coftile(
                    title: 'Espresso',
                    desc: 'filled with pure milk',
                    img: 'assets/images/cf1.jpg',
                  ),
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
