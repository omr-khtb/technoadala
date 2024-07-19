import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton2 extends StatelessWidget {
  final String iconPath;
  final String details;
  final double fontsize;
  final VoidCallback onPressed; // Added onPressed callback

  const CustomButton2({
    required this.iconPath,
    required this.details,
    required this.onPressed, // Accept onPressed callback as a parameter
    required this.fontsize,
    // Accept onPressed callback as a parameter
  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF5E5E5E);
    Color backgroundColor = Color(0xFFF5F5F5);

    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onPressed, // Call onPressed callback when tapped
              child: Container(
                width: 125,
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5), // Set background color
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Set shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      width: 123,
                      height: 30, // Set the desired height
                      child: Center(
                        child: Text(
                          details,
                          textAlign: TextAlign.center, // Align text to the center
                          style: GoogleFonts.almarai(
                            fontSize: fontsize,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),

                    // Center the icon
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        iconPath,
                        filterQuality: FilterQuality.high,
                        height: 45, // Adjust the height as needed
                        width: 45, // Adjust the width as needed
                        fit: BoxFit.contain,
                      ),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),

      ],
    );
  }
}
