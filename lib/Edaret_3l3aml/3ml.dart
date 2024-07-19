import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class A3ml extends StatefulWidget {
  @override
  _A3mlState createState() => _A3mlState();
}

class _A3mlState extends State<A3ml> {
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
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/A3maly');
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 130,
                    child: Text(
                      'Casecode',
                      style: GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _container43ml(
                        name: '',
                        code: '',
                        casecode: '',
                        casetype: '',
                        khesmname: '',
                        location: '',
                        qarar: '',
                        time: '',
                        mawdoo3: '',
                        casenum: ''
                    ),
                  ]
              ),
            ]
        ),
        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      ),
    );
  }

  Widget _container43ml({
    required String name,
    required String code,
    required String casetype,
    required String casecode,
    required String khesmname,
    required String location,
    required String qarar,
    required String time,
    required String mawdoo3,
    required String casenum,
    d,
  }) {
    return Column(
        children: [
          Row(
              children: [
                SizedBox(height: 20,),
                Container(
                    width: 359,
                    height: 183,
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              code,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ' :الرقم الألي',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 102,
                              child: Text(
                                casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              ' :كود القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              khesmname,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ': الخصم ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 126,
                              child: Text(
                                name,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              ' :الموكل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              mawdoo3,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ' :موضوعها',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              time,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ' :معاد الجلسة',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              qarar,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ': القرار ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 132,
                              child: Text(
                                location,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              ' :المكان',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              casenum,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ' :رقم القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 4,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 9,),
                            GestureDetector(
                              onTap: () {
                                // Handle button click for the first button
                                // You can add your logic here
                              },
                              child: PopupMenuButton<int>(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                                ),
                                constraints: const BoxConstraints.expand(width: 181, height: 164),

                                onSelected: (int value) {
                                  // Handle the menu selection
                                  switch (value) {
                                    case 1:
                                      print('إلى الأعمال الحالية');
                                      break;
                                    case 2:
                                      print('إلى الأعمال المنتهية');
                                      break;
                                    case 3:
                                      print('حذف العمل');
                                      break;
                                  }
                                },
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/case3.png',
                                          width: 22,
                                          height: 22,),
                                        SizedBox(width: 19,),

                                        Text('إلى الأعمال الحالية',
                                            style: GoogleFonts.almarai(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                            )),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/case4.png',
                                          width: 22,
                                          height: 22,),
                                        SizedBox(width: 06,),
                                        Text('إلى الأعمال المنتهية',
                                          style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),),

                                      ],
                                    ),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/delete.png',
                                          width: 22,
                                          height: 22,),
                                        SizedBox(width: 59,),

                                        Text('حذف العمل',
                                            style: GoogleFonts.almarai(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                                child: Container(
                                  width: 123,
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
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(children: [
                                    Icon(Icons.touch_app),
                                    Text(
                                      'اضغط لتحديد الحالة',
                                      style: TextStyle(
                                          fontFamily: 'Almarai',
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                            // Add more Container widgets here if needed
                          ],
                        ),
                        SizedBox(height: 7,)
                      ],
                    )
                ),
              ]
          ),
        ]
    );
  }
}
