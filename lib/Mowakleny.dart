import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;


import 'Optionspage.dart'; // Import SystemChrome

class Mowaklenypage extends StatefulWidget {
  @override
  _MowaklenypageState createState() => _MowaklenypageState();
}

class _MowaklenypageState extends State<Mowaklenypage> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
  static const IconData verified = IconData(
      0xe699, fontFamily: 'MaterialIcons');


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
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
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/afterlogin');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 160,
                    child: Text(
                      'موكليني',
                      style: GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.white

                      ),
                    ),)


                ],
              ),
            ),
          ),
        ),
        body: ListView(
            children: [
              Padding(


                padding: EdgeInsets.only(right: 300, top: 10),
                child: IconButton(
                  icon: Image.asset(
                    'assets/sort.png',
                    width: 53.5,
                    height: 42.2,
                  ),
                  onPressed: () {
                    // Add functionality here
                  },
                ),


              ),
              Row(
                children: [

              _container4mowakel(name: '(محمد بدر خالد الحسيني)', code: 'CL912', casetype: 'جنائي', casecode: '65424452'),

                ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container4mowakel({
    required String name,
    required String code,
    required String casetype,
    required String casecode,
    d,
  }) {
    return Column(
        children: [
          Row(

              children: [
                SizedBox(width: 12,),

                SizedBox(height: 20,),
                Container(
                    width: 359,
                    height: 94,
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
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
                    child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:EdgeInsets.only(right: 88),
                              child:
                            Text(code,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                            Text(name,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),
                            Text(' :الموكل',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),
                            SizedBox(width: 4,),

                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(casecode,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right:82),
                              child:
                            Text(': كود القضية ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),),),

                            Text(casetype,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),),
                            Text(':نوع القضية',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 4,),


                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                // Add functionality here
                              },
                              icon: Icon(
                                Icons.arrow_back, color: Colors.black,),
                              label: Text('الذهاب الي القضية',
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                            ),
                            // Center horizontally

                            GestureDetector(
                              onTap: () {
                                // Handle button click for the first button
                                // You can add your logic here
                              },
                              child: Container(
                                width: 86,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  // Set background color
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      // Set shadow color
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'اظهار صوره الهوية',
                                    style: TextStyle(
                                      fontFamily: 'Almarai',
                                      fontSize: 9,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/Mowaklenydetails');


                                // Handle button click for the second button
                                // You can add your logic here
                              },
                              child: Container(
                                width: 84,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  // Set background color
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      // Set shadow color
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'اظهار صوره التوكيل',
                                    style: TextStyle(
                                      fontFamily: 'Almarai',
                                      fontSize: 9,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 3,),


                            // Add more Container widgets here if needed
                          ],
                        ),


                      ],
                    )

                ),
                SizedBox(width: 9,),
                Image.asset('assets/personn.png',width: 20,height: 20,),

              ]


          ),
        ]);
  }
}