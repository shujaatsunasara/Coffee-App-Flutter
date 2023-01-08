import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  bool buynow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0F151B),
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'moreinfo',
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned(
              top: 400,
              left: 40,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Description\n',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text:
                            '\nA cappuccino is the perfect balance of espresso,\nsteamed milk and foam.',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                          text: '\n\n\nSize',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white70,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '\n\nCurrently only Medium Size is available!',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xffA25D37),
                              fontWeight: FontWeight.w700)),
                    ])),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70),
                      child: Row(
                        children: [
                          Text(
                            '\tPrice  ',
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$6.00',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white70,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () async {
                              setState(() {
                                buynow = true;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(buynow ? 25 : 10),
                                color:
                                    buynow ? Colors.white70 : Color(0xffA25D37),
                              ),
                              width: buynow ? 160 : 100,
                              height: buynow ? 50 : 50,
                              child: Center(
                                  child: buynow
                                      ? Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .exclamationmark_circle,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                'Currently Out of Stock!',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          ),
                                        )
                                      : Text(
                                          'Buy Now',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Hero(
              tag: 'Esp',
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: Container(
                  width: double.infinity,
                  height: 290,
                  child: Image.asset(
                    'assets/images/cf1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80, left: 15, right: 15),
                child: Container(
                  alignment: AlignmentDirectional.topEnd,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.brown.withOpacity(0.3)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 25),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Cappucino',
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '\nWith Pure Milk',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Expanded(
                                    child: Icon(
                                      CupertinoIcons.leaf_arrow_circlepath,
                                      color: Color(0xffA25D37),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0F151B),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Expanded(
                                      child: Icon(
                                    CupertinoIcons.drop_fill,
                                    color: Color(0xffA25D37),
                                  )),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0F151B),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.5',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '(6,000)',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    width: 54,
                                  ),
                                  Container(
                                    height: 37,
                                    width: 100,
                                    child: Center(
                                      child: Expanded(
                                          child: Text(
                                        'Medium Roasted',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            color: Colors.white70),
                                      )),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff0F151B),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
