import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget _buildTextFieldContainer({
  required String hintText,
  required String iconPath,
  double iconSize = 36.0,
  bool isObscureText = false,
}) {
  return Container(
    width: 332,
    height: 76,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(iconPath, width: iconSize, height: iconSize),
        ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            obscureText: isObscureText,
          ),
        ),
      ],
    ),
  );
}

Widget _buildTextFieldContainerWithButton({
  required String hintText,
  required String iconPath,
  required double iconSize,
  bool isObscureText = false,
  required String leftButtonText,
  required VoidCallback onLeftButtonPressed,
  required String rightButtonText,
  required VoidCallback onRightButtonPressed,
  required bool switchValue,
  required ValueChanged<bool> onSwitchChanged,
}) {
  return Column(
    children: [
      _buildTextFieldContainer(
        hintText: hintText,
        iconPath: iconPath,
        iconSize: iconSize,
        isObscureText: isObscureText,
      ),
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onLeftButtonPressed,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),

                ),
              ),
              _buildSwitchButton(switchValue, onSwitchChanged),
              Text(
                leftButtonText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Almarai',
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onRightButtonPressed,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                rightButtonText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}


Widget _buildSwitchButton(bool value, ValueChanged<bool> onChanged) {
  return Container(
    width: 30.72,
    height: 13.22,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.black),
      color: Colors.white,
    ),
    child: Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          left: value ? 17.5 : 0,
          child: Container(
            width: 9.96,
            height: 9.92,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onChanged(!value);
          },
          behavior: HitTestBehavior.translucent,
        ),
      ],
    ),
  );
}

