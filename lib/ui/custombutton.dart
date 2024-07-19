import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final String details;
  final VoidCallback onPressed; // Added onPressed callback

  const CustomButton({
    required this.iconPath,
    required this.text,
    required this.details,
    required this.onPressed, // Accept onPressed callback as a parameter
  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF5E5E5E);
    Color backgroundColor = Color(0xFF4F97EA);

    return Column(
      children: [
        Row(
          children: [
             GestureDetector(
                onTap: onPressed, // Call onPressed callback when tapped
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      // Center the icon
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          iconPath,
                          color: Colors.white,
                          filterQuality: FilterQuality.high,
                          height: 46, // Adjust the height as needed
                          width: 46, // Adjust the width as needed
                          fit: BoxFit.contain,
                        ),
                      ),


                    ],
                  ),
                ),
              ),

          ],
        ),
        Container(
          width: 106,
          height: 40, // Set the desired height
          child: Center(
            child: Text(
              details,
              textAlign: TextAlign.center, // Align text to the center
              style: GoogleFonts.almarai(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
