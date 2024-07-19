
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

Widget _buildTextFieldContainerWithButton({
  required String type,


}) {
  return Container(
    height: 80,
    child: ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      reverse: true,
      children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                // Add your functionality here
              },
              child: Container(
                width: 148,
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set your background color here
                  borderRadius: BorderRadius.circular(24), // Adjust as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    type,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Almarai', // Set your font family here
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),


          ],

        ),],),);}

Widget _buildTextFieldContainer({
  required String hintText,
  double iconSize = 36.0,
  double fonts=18.0,
  bool isObscureText = false,
  required VoidCallback onPressed,
}) {
  return Container(

    width: 165,
    height: 58,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Set shadow color
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],

    ),

    child: Row(
      children: [

        Expanded(
          child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
            ),
            child: Text(
              hintText,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: fonts,
                color: Colors.black,

              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}