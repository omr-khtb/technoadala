import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;



class Galasat5obra2 extends StatefulWidget {
  @override
  _Galasat5obra2State createState() => _Galasat5obra2State();
}

class _Galasat5obra2State extends State<Galasat5obra2> {
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
                      'جلسات خبراء',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(


                    padding: EdgeInsets.only(left: 20, top: 10),
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
                  SizedBox(width: 150,),
                  GestureDetector(
                    onTap: () {
                      // Handle button click for the first button
                      // You can add your logic here
                    },

                    child: Container(
                      width: 145,
                      height: 37,
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
                      child: Row(children: [
                        SizedBox(width: 3,),
                        Image.asset('assets/print.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'طباعة الصفحة',
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ]),
                    ),
                  ),


                  // Add more Container widgets here if needed
                ],
              ),

              SizedBox(height: 20,),

              Row(
                  children: [
                    _container45obraa(
                        name: 'اشرف اشرف خالد',
                        code: 'CL912',
                        casetype: 'جنائي',
                        casecode: '65424452',
                        khesmname:'///',
                        location: '',
                        qarar: '',
                        time: '',
                        mawdoo3: '', casenum: ' 50000/2024 اثبات حاله مستعجل 20', khober: '', qa3a: '', floor: ''
                    ),

                  ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container45obraa({
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
    required String khober,
    required String qa3a,
    required String floor,


  }) {
    return Column(
        children: [
          Row(

              children: [
                SizedBox(width: 25,),

                SizedBox(height: 20,),
                Container(
                    width: 360,
                    height: 208,
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

                              Text(code,
                                  style: GoogleFonts.almarai(
                                      fontSize: 15,
                                      color: Colors.black)),

                            Text(' :الرقم الألي',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 102,
                              child:
                              Text(casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                            Text(' :كود القضية',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),

                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(khesmname,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                              Text(': الخصم ',
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                            SizedBox(width: 126,
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
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(khober,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                              Text(': الخبير ',
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                            SizedBox(width: 129,
                              child:
                            Text(location,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                            Text(' :المكان',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(time,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :معاد الجلسة',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(qa3a,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                              Text(': القاعة ',
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                            SizedBox(width: 56,
                              child:
                            Text(floor,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                            Text(' :الدور',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 142,
                              child:
                            Text(qarar,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                            Text(' :القرار',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(casenum,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :رقم القضية',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(mawdoo3,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :موضوعها',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),




                        Row(

                          children: [
                            SizedBox(width: 9,),

                            GestureDetector(
                              onTap: () {
                                // Handle button click for the first button
                                // You can add your logic here
                              },
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
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



                            // Add more Container widgets here if needed
                          ],
                        ),
                        SizedBox(height: 7,)

                      ],
                    )

                ),

              ]


          ),
        ]);
  }
}