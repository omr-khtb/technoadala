import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Login_Page.dart';
import 'Mowakel_Pages/Docs_ofCase.dart';
import 'Mowakel_Pages/NextGalsa.dart'; // Import SystemChrome

class CaseDetails extends StatefulWidget {
  @override
  _CaseDetailsState createState() => _CaseDetailsState();
}

class _CaseDetailsState extends State<CaseDetails> {
  bool _isArrow1Up = true;
  bool _isArrow2Up = true;
  bool _showContainer4case = false;
  bool _showContainer4details = false;


  void _toggleArrow1() {
    setState(() {
      _isArrow1Up = !_isArrow1Up;
      _showContainer4case = !_showContainer4case;
    });
  }
  void _toggleArrow2() {
    setState(() {
      _isArrow2Up = !_isArrow2Up;
      _showContainer4details = !_showContainer4details;      // Hide the other container
    });}
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
                    right: 109,
                    child: Text(
                      "معلومات القضية",
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
                  ),
                  Positioned(
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
                  ),
                  Positioned(
                    bottom: 6,

                    child:
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 35,),

                        GestureDetector(
                          onTap: _toggleArrow1,
                          child:
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(
                              _isArrow1Up
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 200,),
                        Text('بيانات القضية',
                          style: GoogleFonts.almarai(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),


                      ]),),
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

                    SizedBox(height: 14),
                    if (_showContainer4case) ...[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': صفته', width: 115, height: 47,
                            ),
                            SizedBox(width: 10,),
                            _buildTextFieldContainer(
                              hintText: ': الموكل', width: 242, height: 47,
                            ),

                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': صفته', width: 115, height: 47,
                            ),
                            SizedBox(width: 10,),
                            _buildTextFieldContainer(
                              hintText: ': الخصم', width: 242, height: 47,
                            ),

                          ]),
                      SizedBox(height: 15),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': موضوع الدعوى', width: 367, height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':الرقم الألي', width: 175, height: 47,
                            ),
                            SizedBox(width: 17,),

                            _buildTextFieldContainer(
                              hintText: ':  رقم القضية', width: 175, height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': المحكمة الكلية',
                              width: 367,
                              height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':القاعة', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':الدور', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':  دائرة', width: 118, height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': محكمة الإستئناف',
                              width: 367,
                              height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':القاعة', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':الدور', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':  دائرة', width: 118, height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ': محكمة التمييز',
                              width: 367,
                              height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':القاعة', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':الدور', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':  دائرة', width: 118, height: 47,
                            ),


                          ]),
                      SizedBox(height: 15),
                    ],
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 5,),

                          GestureDetector(
                            onTap: _toggleArrow2,
                            child:
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                _isArrow2Up
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 206.5,),
                          Text('بيانات الخبراء',
                            style: GoogleFonts.almarai(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(width: 8,),


                        ]),
                    SizedBox(height: 15,),
                    if (_showContainer4details) ...[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':خبراء', width: 175, height: 47,
                            ),
                            SizedBox(width: 17,),

                            _buildTextFieldContainer(
                              hintText: ':اسم الخبير', width: 175, height: 47,
                            ),
                          ]),
                    SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            _buildTextFieldContainer(
                              hintText: ':الغرفة', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':الدور', width: 118, height: 47,
                            ),
                            SizedBox(width: 6,),

                            _buildTextFieldContainer(
                              hintText: ':التاريخ', width: 118, height: 47,
                            ),


                          ]),],
                    SizedBox(height: 65),


                  ],
                ),

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
    required double width,
    required double height,
    bool isObscureText = false,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(10),
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



  Widget _container4galasat({
    required String location,
    required String date,
    required String qarar,

  }) {
    return Container(
      width: 353,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(10),
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(location,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(': المكان',
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 170,
                  child:
                  Text(date,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),),
                Text(': جلسة',
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold

                  ),
                ),
                SizedBox(width: 5,)

              ],
            ),

            Row(            mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Text(qarar,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(': القرار',
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold

                  ),
                ),
                SizedBox(width: 5,)

              ],
            ),

          ]),
    );
  }

  Widget _container4gaasat({
    required ValueChanged<String?> onChanged,

  }) {
    return Container(
      height: 56, // Increased height to accommodate two rows
      width: 353,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ]
      ),
      child: Row(
          children: [
            Text('')
          ]),

    );
  }
}