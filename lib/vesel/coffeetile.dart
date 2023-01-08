import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdproject/screens/detailscreen.dart';
import 'package:thirdproject/vesel/data.dart';

class coftile extends StatefulWidget {
  final String title;
  final String desc;
  final String img;

  const coftile(
      {super.key, required this.title, required this.desc, required this.img});

  @override
  State<coftile> createState() => _coftileState(
        title,
        desc,
        img,
      );
}

class _coftileState extends State<coftile> {
  final String title;
  final String desc;
  final String img;

  _coftileState(this.title, this.desc, this.img);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => detailscreen()),
          ),
        );
      },
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4))),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7.0),

                    //add image variable from
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detailscreen()));
                      },
                      child: Hero(
                        tag: 'Esp',
                        child: Image.asset(
                          'assets/images/cf1.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    title,
                    style: GoogleFonts.raleway(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Text(
                    desc,
                    style: GoogleFonts.raleway(
                      color: Color(0xffA25D37),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 30.0),
                  child: Text(
                    '${6.00}',
                    style: GoogleFonts.raleway(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
