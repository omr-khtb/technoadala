import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:techno3adalaa/ui/DATAUSAGEEE.dart';
import 'package:techno3adalaa/ui/custombutton_v2.dart';

import '../ui/bottombar.dart';

class Edaret3ml_Group extends StatefulWidget {
  @override
  _Edaret3ml_GroupState createState() => _Edaret3ml_GroupState();
}

class _Edaret3ml_GroupState extends State<Edaret3ml_Group> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
  static const IconData verified = IconData(
      0xe699, fontFamily: 'MaterialIcons');


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
          preferredSize: Size.fromHeight(227),
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
                    right: 139,
                    child: Text(
                      "إدارة العمل",
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
                  ), Positioned(
                    bottom: 145,
                    right: 267,
                    child: SizedBox(
                      width: 18, // Adjust as needed
                      height: 18,
                      child: Image.asset(

                        'assets/verifed.png',

                      ),
                    ),),
                  Positioned(
                    bottom: 116,
                    right: 16,
                    child: Text(
                      ":اسم المستخدم",
                      style: GoogleFonts.almarai(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ), Positioned(
                    bottom: 111,
                    right: 119,
                    child: Text(
                      "L712",
                      style: GoogleFonts.almarai(
                          fontSize: 20,
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

                ],
              ),
            ),
          ),
        ),
        body: Stack(
            children: [

              ListView(
                  children: [

                    Column(
                        children: [

                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [

                                        CustomButton2(
                                            iconPath: 'assets/case5.png',
                                            details: 'أعمال المكتب',
                                            fontsize: 21,
                                            onPressed: () {
                                              Navigator.of(context).pushNamed(
                                                  '/A3malElmaktb');
                                            }),
                                        SizedBox(width: 75,),
                                        CustomButton2(
                                            iconPath: 'assets/case.png',
                                            details: 'اعمالي',
                                            fontsize: 22,
                                            onPressed: () {
                                              Navigator.of(context).pushNamed(
                                                  '/A3maly');
                                            })
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [

                                        CustomButton2(
                                            iconPath: 'assets/tawzee3.png',

                                            details: 'توزيع الأعمال',
                                            fontsize: 20,
                                            onPressed: () {
                                              Navigator.of(context).pushNamed(
                                                  '/Tawzee3_3ml');
                                            }),
                                        SizedBox(width: 75,),
                                        CustomButton2(
                                            iconPath: 'assets/case2.png',
                                            details: 'ترحيل العمل',
                                            fontsize: 20,
                                            onPressed: () {
                                              Navigator.of(context).pushNamed(
                                                  '/Tar7eel3ml');
                                            })
                                      ],
                                    ),
                                    SizedBox(height: 40,),

                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                    CustomButton2(
                                        iconPath: 'assets/case4.png',
                                        details: 'الأعمال المنتهية',
                                        fontsize: 17.99,
                                        onPressed: () {
                                          Navigator.of(context).pushNamed(
                                              '/A3malMontahya');
                                        }),
                                        SizedBox(width: 75,),
                                    CustomButton2(
                                        iconPath: 'assets/case3.png',
                                        details: 'الأعمال الحالية',
                                        fontsize: 17.99,
                                        onPressed: () {
                                          Navigator.of(context).pushNamed(
                                              '/A3mal7alia');
                                        }),
                                  ]),
                                    SizedBox(height: 20,),
                                    _buildButtonContainer(hintText: 'إدارة المجموعة',
                                        onPressed: () { Navigator.of(context).pushNamed(
                                        '/Managegroup'); },
                                        imagepath: 'assets/options.png'),
                                  ]
                              ),


                          ),
                        ]),
                  ]),

            ]),






        bottomNavigationBar:CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );
  }

  Widget _buildButtonContainer({
    required String hintText,
    required String imagepath,
    bool isObscureText = false,
    required VoidCallback onPressed,
  }) {
    return  GestureDetector(
        onTap:onPressed,
        child:



        Container(
          width: 325,
          height: 83,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5), // Set background color
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Set shadow color
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),],),


                child: Row(

                  children: [
                SizedBox(width: 5,),
                Image.asset(
                  imagepath,

                  height: 55, // Adjust the height as needed
                  width: 55, // Adjust the width as needed
                ),

                SizedBox(width: 107),
                Text(
                    hintText,
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 24,
                      color: Colors.black,


                    ),
                    textAlign: TextAlign.center,
                  ),



              ],
            ),
          ));
        }
      }