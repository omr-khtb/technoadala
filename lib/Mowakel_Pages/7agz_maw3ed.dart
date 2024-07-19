import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';


class Hagz extends StatefulWidget {
  @override
  _HagzState createState() => _HagzState();
}

class _HagzState extends State<Hagz> {
  String? selectedOption; // Define the variable to hold the selected option

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // Change background color to white

        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(232),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
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
                    bottom: 190,
                    right: 145,
                    child: Text(
                      "حجز موعد",
                      style: GoogleFonts.almarai(
                          fontSize: 28,
                          color: Colors.white

                      ),

                    ),
                  ),
                  Positioned(
                    bottom: 145,
                    right: 16,
                    child: Text(
                      "المحامي الدكتور: عبدالله مزيد سعد العازمي",
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
                      "الموكل:  اشرف بدر خالد المحمدي ",
                      style: GoogleFonts.almarai(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ), Positioned(
                    bottom: 87,
                    right: 16,
                    child: Text(
                      "L712-4997:كود القضية ",
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
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/Malia');
                    },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 38, // Increased height to accommodate two rows
                            width: 141,
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ]
                            ),

                            child:Text('تفاصيل الحجز',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.almarai(
                                    fontSize: 24,
                                    color: Colors.black
                                )
                                  )
                        ),
                        SizedBox(width: 10,),

                      ],
                    ),
                    // Text on the right

                    SizedBox(height: 20),
                    // Text field with hint text on the right and text on the left
                    // Text field with hint text on the right and text on the left
                    Row(
                      children: [

                        SizedBox(width: 17),

                        _buildTextFieldContainer(
                          hintText: 'الموضوع',
                        ),

                      ],
                    ),
                    SizedBox(height: 30),
                    // Two text fields with icons in one row
                    Row(
                      children: [
                        SizedBox(width: 20),

                        _buildsmallTextFieldContainer(
                          hintText: 'الوقت ',
                          iconPath: 'assets/time.png',
                          iconSize: 28,
                        ),
                        SizedBox(width: 12),

                        _buildsmallTextFieldContainer(
                          hintText: 'التاريخ ',
                          iconPath: 'assets/calender.png',
                          iconSize: 24,
                        ),

                      ],
                    ),
                    SizedBox(height: 20),
                    // Text field
                    SizedBox(height: 30),
                    // Text field
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
                    SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [



                        GestureDetector(
                          child:
                          Container(
                            width: 111,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFF4F97EA),
                              borderRadius: BorderRadius.circular(7.0), // Border radius
                            ),

                            child: Text('حجز موعد',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.almarai(
                                  fontSize: 20,
                                  color: Colors.white



                              ),
                            ),
                          ),
                        ),

                      ],),

                  ]) ),


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
      width: 338,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
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
    double iconSize = 36.0,
    bool isObscureText = false,
  }) {
    return Container(
      width: 162,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
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
                  fontSize: 15,
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
    width: 338,
    height: 55,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color
      borderRadius: BorderRadius.circular(14),
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
