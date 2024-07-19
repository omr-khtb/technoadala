import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Login_Page.dart'; // Import SystemChrome

class Fat7Malaf extends StatefulWidget {
  @override
  _Fat7MalafState createState() => _Fat7MalafState();
}

class _Fat7MalafState extends State<Fat7Malaf> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.8),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/profileappbar.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 15,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/whitejustice.png'),
                      backgroundColor: Colors.transparent,
                      radius: 45,
                    ),
                  ),
                  Positioned(
                    bottom: 13,
                    left: 14,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/afterlogin');
                      },
                    ),
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    
                    SizedBox(width: 17),

                    _buildTextFieldContainer(
                      hintText: ': الموضوع',

                    ),
                    SizedBox(height: 17),

                    _buildTextFieldContainer(
                      hintText: ': الموكل',
                    ),
                    SizedBox(height: 17),

                    _buildTextFieldContainer(
                      hintText: ': الخصم ',
                    ),

                  ],
                ),
                SizedBox(height: 20),
                // Two text fields with icons in one row
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    Container(
                      width: 162,
                      height: 62,
                      decoration: BoxDecoration(
                        color: Colors.white, // Set background color
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3), // Set shadow color
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton( icon: Icon(Icons.keyboard_arrow_down_sharp,size: 30,color: Colors.black,), onPressed: null,),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.7),
                            child: Text('بيانات الموكل',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                fontSize: 18,
                                color: Colors.black,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),

                    _SbuildTextFieldContainer(
                      hintText: ': رمز الموكل ',
                    ),




                  ],
                ),
                
                SizedBox(height: 20),
                Column(
                  children: [


                    SizedBox(width: 17),

                    _buildButtonContainer(
                      buttonText: 'بيانات التحقيق ',
                      onPressed: (){
                        Navigator.of(context).pushNamed('/Ta72e2Details');
                      },
                    ),SizedBox(height: 17),
                    _buildButtonContainer(
                      buttonText: 'بيانات القضية ',
                      onPressed: (){
                        Navigator.of(context).pushNamed('/El2adyaDetails');

                      },
                    ),SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          width: 336,
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(9.0), // Border radius
                          ),

                          child:

                          TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none, // Remove default TextField border
                              contentPadding: EdgeInsets.all(20.0), // Padding for text input
                              hintText: '.........إضافة ملاحظة',
                              hintStyle:  GoogleFonts.almarai(
                                  fontSize: 20,
                                  color: Colors.black

                              ),
                            ),
                          ),
                        ),



                      ],
                    ),



                  ],
                ),
                SizedBox(height: 20),



                Row(
                  children: [
                    SizedBox(
                      width: 115,
                      height: 42,
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4F97EA), // Change button background color to black
                        ),

                        onPressed: () {},
                        child: Text('حفظ',
                          style: GoogleFonts.almarai(
                              fontSize: 20,
                              color: Colors.white



                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 135), // Added SizedBox for vertical spacing
                    SizedBox(
                      width: 115,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4F97EA), // Change button background color to black
                        ),
                        onPressed: () {},
                        child: Text('رفع ملف',
                          style: GoogleFonts.almarai(
                              fontSize: 17,
                              color: Colors.white
                          ),
                        ),
                      ),),
                  ],
                ),
                SizedBox(height: 80,)

              ],
            ),
          ),
        ),

        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );
  }


  Widget _buildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 340,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              hintText,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,

              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonContainer({
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 340,
        height: 62,
        decoration: BoxDecoration(
          color: Colors.white, // Set background color
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Set shadow color
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 17,),
            Icon(Icons.arrow_back,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  buttonText,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _SbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 162,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              obscureText: isObscureText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              hintText,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,

              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _NbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 340,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set shadow color
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
            child: Text(
              'د.ك',
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

  Widget _buildsmallTextFieldContainer({
    required String hintText,
    required String iconPath,
    double iconSize = 1.0,
    bool isObscureText = false,
  }) {
    return Container(
      width: 162,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(15),
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
                  fontSize: 13,
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
}
Widget _buildDropdownContainer({
  required List<String> options,
  String? selectedOption,
  required ValueChanged<String?> onChanged,
}) {
  return Container(
    width: 345,
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
              selectedOption ?? 'نوع المصاريف', // Display selected option or empty string
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
