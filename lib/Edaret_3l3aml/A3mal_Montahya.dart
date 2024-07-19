import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;



class A3malMontahya extends StatefulWidget {
  @override
  _A3malMontahyaState createState() => _A3malMontahyaState();
}

class _A3malMontahyaState extends State<A3malMontahya> {
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
                      Navigator.of(context).pushNamed('/A3maly');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 120,
                    child: Text(
                      'الأعمال المنتهية',
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
              SizedBox(height: 55,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _container4a3mal7alia(name: '', code: '', casecode: ''),


                  ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container4a3mal7alia({
    required String name,
    required String code,
    required String casecode,



  }) {
    return Column(
        children: [

          Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(
                    width: 303,
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
                            Text(casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 20,
                                    color: Colors.black)),
                            Text(' :كود القضية',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text(code,

                                style: GoogleFonts.almarai(
                                    fontSize: 15,

                                    color: Colors.black)),

                            Text('  :الرقم الألي   ',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 3,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pushNamed('/3ml');
                              },
                              child:
                              Text(
                                'مشاهدة العمل',
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),),
                            SizedBox(width: 125,
                              child:
                              Text(name,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :الموكل',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),



                          ],
                        ),




                        Row(

                          children: [
                            SizedBox(width: 9,),



                            // Add more Container widgets here if needed
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