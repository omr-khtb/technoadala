import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

import 'Login_Page.dart'; // Import SystemChrome

class phoneauth extends StatefulWidget {
  @override
  _phoneauthState createState() => _phoneauthState();
}

class _phoneauthState extends State<phoneauth> {
  String? selectedOption;
  late String _selectedItem;
// Define the variable to hold the selected option

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // Change background color to white
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(221),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/appbarv4.png',
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/phoneauth.png',
                      width: 113,
                      height: 113,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 38,),
                    Text(
                      'رمز التحقق',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 22,),
                    Text(
                      'نحتاج إلى إرسال رمز للتحقق من رقمك',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16,
                        color: Color(0xFF666666),
                      ),
                    ),
                    SizedBox(height: 40,),
                    _buildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      },
                    ),
                    SizedBox(height: 50,),
                    _NbuildTextFieldContainer(
                      hintText: 'رقم الهاتف',
                    ),

                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 104,
                      height: 38,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          // Change button background color to black
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Set border radius to 12
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/otp');

                        },
                        child: Text(
                          'إرسال',
                          style: GoogleFonts.almarai(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildDropdownContainer({
  required List<String> options,
  String? selectedOption,
  required ValueChanged<String?> onChanged,
}) {
  return Container(
    width: 310,
    height: 55,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black, // Set underline color
          width: 2, // Set underline width
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end
        children: [
          PopupMenuButton<String>(
            icon: Icon(Icons.arrow_drop_down),
            itemBuilder: (BuildContext context) {
              return options.map((String option) {
                return PopupMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList();
            },
            onSelected: (String? newValue) {
              onChanged(newValue);
              selectedOption = newValue; // Update selectedOption with the chosen value
            },
          ),
          SizedBox(width: 8), // Add some space between the arrow and the selected option
          Expanded(
            child: Text(
              selectedOption ?? 'إختر الدولة', // Display selected option or empty string
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget _NbuildTextFieldContainer({
  required String hintText,
  bool isObscureText = false,
}) {
  return Container(
    width: 310,
    height: 52,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            '+',
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(

              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 13),
            ),
            obscureText: isObscureText,
          ),
        ),
      ],
    ),
  );
}
