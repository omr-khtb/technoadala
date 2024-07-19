import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Login_Page.dart'; // Import SystemChrome

class Galasat5obraa extends StatefulWidget {
  @override
  _Galasat5obraaState createState() => _Galasat5obraaState();
}

class _Galasat5obraaState extends State<Galasat5obraa> {

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
          preferredSize: Size.fromHeight(233),
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
                    right: 129,
                    child: Text(
                      "جلسات خبراء",
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
                      Navigator.of(context).pushNamed('/optionspage');
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [


                  Column(
                    children: [


                      SizedBox(height: 20),
                      // Text field with hint text on the right and text on the left
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [


                          _buildDropdownContainer(
                            options: ['Option 1', 'Option 2', 'Option 3'],
                            selectedOption: selectedOption,
                            onChanged: (String? newValue) {
                              selectedOption = newValue;

                            }, selectedOoption: '        الموكل     ',
                          )

                        ],
                      ),SizedBox(height: 20),


                         Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(


                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Add your functionality here
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Set your background color here
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
                                        'تأجيل\n الإعلان مع الإرشاد ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Almarai', // Set your font family here
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,),

                                GestureDetector(
                                  onTap: () {
                                    // Add your functionality here
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Set your background color here
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
                                        'تم تقديم\n حافظة المستندات ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Almarai', // Set your font family here
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
]),

                                SizedBox(height: 30,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Add your functionality here
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Set your background color here
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
                                        'طلبنا اجل للرد',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Almarai', // Set your font family here
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                                SizedBox(width: 20,),

                                GestureDetector(
                                  onTap: () {
                                    // Add your functionality here
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Set your background color here
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
                                        'تم تقديم مذكرة',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Almarai', // Set your font family here
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],

                            ),
                            SizedBox(height: 30,),
                            Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Add your functionality here
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Set your background color here
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
                                        'أجل الإعلان',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Almarai', // Set your font family here
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ],),
                      SizedBox(height: 10,),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [

                            _buildDropdownContainer(
                              options: ['Option 1', 'Option 2', 'Option 3'],
                              selectedOption: selectedOption,
                              onChanged: (String? newValue) {
                                selectedOption = newValue;

                              }, selectedOoption: '        الخصم     ',
                            )

                          ]),

                    ],
                  ),
                  SizedBox(height: 20),
                  // Two text fields with icons in one row
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Add your functionality here
                        },
                        child: Container(
                          width: 79,
                          height: 33,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Set your background color here
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
                              'إضافة قرار',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Almarai', // Set your font family here
                              ),
                            ),
                          ),
                        ),
                      ),
//اضافة ملاحظة تحت اجل للاعلان
// اضافة قرار بتظهر التلاتة خيارات
// اضافة خيارات تم تقديم حافظة المستندات و و وو تحت اضافة الخصم
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: () {
                          // Add your functionality here
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Set your background color here
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
                              'محجوزة للتقرير',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Almarai', // Set your font family here
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 37),

                      GestureDetector(
                        onTap: () {
                          // Add your functionality here
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Set your background color here
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
                              'جلسة للمعاينة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Almarai', // Set your font family here
                              ),
                            ),
                          ),
                        ),
                      ),SizedBox(width: 37),

                      GestureDetector(
                        onTap: () {
                          // Add your functionality here
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Set your background color here
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
                              'جلسة للمناقشة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Almarai', // Set your font family here
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),





                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:40 ),
                        child:
                        SizedBox(
                          width: 101,
                          height: 31,
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero, // Remove default padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3), // Set a border radius for a rounded square button
                              ),
                              backgroundColor: Colors.black,
                            ),

                            onPressed: () {},
                            child: Text('اختر التاريخ والوقت',

                                style: GoogleFonts.almarai(
                                  fontSize: 11,
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white,






                                ),

                                textAlign: TextAlign.center
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 4,),
                      Column(
                        children: [
                          SizedBox(
                            width: 101,
                            height: 29,
                            child:
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Change button background color to black
                              ),

                              onPressed: () {},
                              child: Text('حفظ',
                                style: GoogleFonts.almarai(
                                    fontSize: 18,
                                    color: Colors.white



                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 101,
                            height: 29,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Change button background color to black
                              ),
                              onPressed: () {},
                              child: Text('رفع ملف',
                                style: GoogleFonts.almarai(
                                    fontSize: 14,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                        Container(
                          width: 160,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(9.0), // Border radius
                          ),

                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none, // Remove default TextField border
                              contentPadding: EdgeInsets.all(20.0), // Padding for text input
                              hintText: '.......إضافة ملاحظة',
                              hintStyle:  GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black

                              ),
                            ),
                          ),
                        ),),
                      SizedBox(height:50,),
                    ],
                  ),
                  SizedBox(height:80,),

                ]),
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
      width: 176,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(15),
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
              '',
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

  Widget _LbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 126,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(15),
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

          Expanded(
            child: TextField(
              textAlign: TextAlign.center,
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
  Widget _NbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 340,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(15),
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
            color: Colors.grey.withOpacity(0.7), // Set shadow color
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
  required String selectedOoption
}) {
  return Container(
    width: 178,
    height:43,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color
      borderRadius: BorderRadius.circular(0),
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
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end
        children: [
          PopupMenuButton<String>(
            icon: Icon(Icons.keyboard_arrow_down_sharp),
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
              selectedOption ?? selectedOoption, // Display selected option or empty string
              textAlign: TextAlign.center,
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
