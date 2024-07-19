import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/main.dart';
class Appbarr extends StatelessWidget {
  final String name;
  final String mowakel;
  final String code;
  final VoidCallback onPressed; // Change the type to VoidCallback

  const Appbarr({
    required this.name,
    required this.mowakel,
    required this.code,
    required this.onPressed,
     // Accept onPressed callback as a parameter
  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF5E5E5E);

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/appbar_v2.png',
          fit: BoxFit.fitWidth,
        ),
        Positioned(
          bottom: 80,
          left: 20,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/justice.png'),
            backgroundColor: Colors.transparent,
            radius: 35,
          ),
        ),

        Positioned(
          bottom: 145,
          right: 16,
          child: Text(
            "المحامي الدكتور: $name",
            style: GoogleFonts.almarai(
                fontSize: 14,
                color: Colors.white

            ),

          ),
        ),Positioned(
          bottom: 145,
          right: 267,
          child: SizedBox(
            width: 18, // Adjust as needed
            height: 18,
            child:Image.asset(

              'assets/verifed.png',

            ),
          ),),
        Positioned(
          bottom: 116,
          right: 16,
          child: Text(
            "الموكل:  $mowakel ",
            style: GoogleFonts.almarai(
                fontSize: 15,
                color: Colors.white
            ),
          ),
        ), Positioned(
          bottom: 87,
          right: 16,
          child: Text(
            "$code:كود القضية ",
            style: GoogleFonts.almarai(
                fontSize: 15,
                color: Colors.white
            ),
          ),
        ),
        Positioned(
          bottom: 189,
          right: 14,
          child: Icon(
            Icons.mail_rounded,
            color: Colors.white,
            size: 40,
          ),
        ), Positioned(
          bottom: 179,
          left: 10,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 40,
            ),
            onPressed: onPressed,
          ),

        )
      ],
    );
  }
}
