import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Mowakel_Pages/cases.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Docs_ofCase.dart';
import 'NextGalsa.dart';


class CaseDetailss extends StatefulWidget {
  @override
  _CaseDetailssState createState() => _CaseDetailssState();
}

class _CaseDetailssState extends State<CaseDetailss> {
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
                    bottom: 25,
                    left: 130,
                    child: Text(
                      'تفاصيل القضية',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.white,
                      ),
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
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new Cases(),
                          ),
                        );                       },
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
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: _toggleArrow1,
                          child:
                          Container(
                            height: 38,
                            // Increased height to accommodate two rows
                            width: 168,
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
                                SizedBox(width: 5,),
                                Icon(
                                  _isArrow1Up
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text('معلومات القضية',
                                  style: GoogleFonts.almarai(
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),),
                          SizedBox(width: 10,),


                        ]),
                    SizedBox(height: 14),
                    if (_showContainer4case) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ': صفته', width: 111, height: 47,
                          ),
                          SizedBox(width: 9,),
                          _buildTextFieldContainer(
                            hintText: ': الخصم', width: 233, height: 47,
                          ),

                        ]),
                    SizedBox(height: 15),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ': موضوع الدعوى', width: 353, height: 47,
                          ),


                        ]),
                    SizedBox(height: 15),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ':الرقم الألي', width: 161, height: 47,
                          ),
                          SizedBox(width: 31,),

                          _buildTextFieldContainer(
                            hintText: ':  رقم القضية', width: 161, height: 47,
                          ),


                        ]),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ': المحكمة الكلية',
                            width: 353,
                            height: 47,
                          ),


                        ]),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ': محكمة الإستئناف',
                            width: 353,
                            height: 47,
                          ),


                        ]),
                    SizedBox(height: 15),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          _buildTextFieldContainer(
                            hintText: ': محكمة التمييز', width: 353, height: 47,
                          ),


                        ]),
                    SizedBox(height: 15),],
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: _toggleArrow2,
                            child:
                          Container(
                            height: 38,
                            // Increased height to accommodate two rows
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
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
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Icon(
                                  _isArrow2Up
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text('معلومات عن الجلسات',
                                  style: GoogleFonts.almarai(
                                      fontSize: 18,
                                      color: Colors.black
                                  ),
                                ),


                              ],

                            ),
                          ),),
                          SizedBox(width: 11,),


                        ]),
                    SizedBox(height: 15,),
                    if (_showContainer4details)

                    _container4galasat(
                        location: 'قصر العدل',
                        date: '17/5/2024',
                        qarar: ' تأجيل لاستكمال المستندات'),

                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: (){Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new DocsOfcase(),
                                  ),
                                );},
                                child:
                                Container(
                                  height: 55, // Increased height to accommodate two rows
                                  width: 170,
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
                                  child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/document.png',
                                          width: 31,
                                          height: 28,),
                                        Text('مستندات القضية',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Almarai',
                                            fontSize: 18,
                                            color: Colors.black,

                                          ),),

                                      ]),


                                )),

                            SizedBox(width: 13,),
                                GestureDetector(
                                  onTap: (){Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                      builder: (context) => new Nextgalsa(),
                                    ),
                                  ); },
                                  child:

                                  Container(
                                        height: 55, // Increased height to accommodate two rows
                                        width: 170,
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
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.asset('assets/calenderv2.png',
                                                width: 31,
                                                height: 28,),
                                              Text('جلساتك القادمة',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  fontFamily: 'Almarai',
                                                  fontSize: 18,
                                                  color: Colors.black,

                                                ),),

                                            ]),


                            )),]),
                    SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 35, // Increased height to accommodate two rows
                          width: 170,
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
                          child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/contact.png',
                                  width: 18,
                                  height: 18,),
                                SizedBox(width: 10,),
                                Text('التواصل مع المحامى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 15,
                                    color: Colors.black,

                                  ),),

                              ]),

                        ),
                        SizedBox(width: 10,),
                      ],
                    )
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