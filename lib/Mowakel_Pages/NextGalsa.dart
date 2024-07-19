import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;



class Nextgalsa extends StatefulWidget {
  @override
  _NextgalsaState createState() => _NextgalsaState();
}

class _NextgalsaState extends State<Nextgalsa> {
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
        backgroundColor: Colors.white ,
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
                      Navigator.of(context).pushNamed('/A3maly');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 130,
                    child: Text(
                      'جلساتك القادمة',
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
        body: Column(
            children: [
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     height: 38, // Increased height to accommodate two rows
                     width: 131,
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

                           Text('الجلسة القادمة',
                             textAlign: TextAlign.right,
                             style: TextStyle(
                               fontFamily: 'Almarai',
                               fontSize: 18,
                               color: Colors.black,

                             ),),

                         ]),

                   ),
                   SizedBox(width: 38,),
                 ],
              ),
              SizedBox(height: 21,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    _container4galsa(location: 'الاحمدي', date: '17/9/2024', qa3a: '', floor: 'الثاني', time: '9:15 AM')

                  ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container4galsa({
    required String location,
    required String date,
    required String qa3a,
    required String floor,
    required String time,



  }) {
    return Column(
        children: [

          Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(
                    width: 357,
                    height: 57,
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
                            Text(location,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.black)),
                            Text(' :المكان',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(
                              width: 171,
                            child:
                            Text(date,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.black)),),
                            Text(' :التاريخ',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text(qa3a,

                                style: GoogleFonts.almarai(
                                    fontSize: 16,

                                    color: Colors.black)),

                            Text('  :القاعة ',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(
                              width:46,
                              child:
                            Text(floor,
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.black)),),

                            Text(':الدور',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),

                            SizedBox(width: 58,
                              child:
                              Text(time,
                                  textAlign: TextAlign.right,

                                style: GoogleFonts.almarai(
                                    fontSize: 15,

                                    color: Colors.black)),),

                            Text(' :معاد الجلسة',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 3,)
                          ],
                        ),




                      ],
                    )

                ),

              ]


          ),
        ]);
  }
}