import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:techno3adalaa/Mowakel_Pages/Case_details.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;



class DocsOfcase extends StatefulWidget {
  @override
  _DocsOfcaseState createState() => _DocsOfcaseState();
}

class _DocsOfcaseState extends State<DocsOfcase> {
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new CaseDetailss(),
                        ),
                      );                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 120,
                    child: Text(
                      'مستندات القضية',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _container4doc(title: 'تم ارفاق مستند من قبل المحامي محمد ابراهيم سعد ابو اليزيد', date: '10/5/2024', mawdo3: 'ايصال رسم قضائي')

                  ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container4doc({
    required String title,
    required String date,
    required String mawdo3,




  }) {
    return Column(
        children: [

          Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(
                    width: 353,
                    height: 89,
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
                            Text(date,
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.black)),
                            SizedBox(
                              width: 270,
                              height: 50,
                              child:
                            Text(title,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 18,
                                    color: Colors.black)),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            GestureDetector(
                              child:
                            Container(
                              width: 96,
                              height: 26,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 3),
                                    ),
                                  ]
                              ),
                              child:Text('عرض المستند',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                      fontSize: 16,
                                      color: Colors.black)),)),
                            SizedBox(
                              width: 175,
                              child:
                            Text(mawdo3,
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,

                                    color: Colors.black)),),

                            Text('  :موضوعه ',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),

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