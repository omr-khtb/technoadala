import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final String details;
  final Color backgroundColor;





  const CustomButton({
    required this.iconPath,
    required this.text,
    required this.details,
    required this.backgroundColor,

  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF5E5E5E);

    return Column(

      children: [
        Row(children:[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 1), // Add some spacing between text and icon

                  // Center the icon
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      iconPath,
                      color: Colors.white,
                      filterQuality: FilterQuality.high,
                      height: 60, // Adjust the height as needed
                      width: 60, // Adjust the width as needed
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 0), // Add some spacing between icon and details

                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ]),

        Container(
          width: 125,
          height: 50, // Set the desired height
          child: Center(
            child: Text(
              details,
              textAlign: TextAlign.center, // Align text to the center
                style: GoogleFonts.almarai(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  color: myColor,
                ),
            ),
          ),
        ),



      ],

    );
  }}


