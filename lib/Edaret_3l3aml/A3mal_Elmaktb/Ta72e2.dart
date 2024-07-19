import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;



class Ta72e22_A3mal extends StatefulWidget {
  @override
  _Ta72e22_A3malState createState() => _Ta72e22_A3malState();
}

class _Ta72e22_A3malState extends State<Ta72e22_A3mal> {
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
                      Navigator.of(context).pushNamed('/A3malElmaktb');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 160,
                    child: Text(
                      'تحقيق',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('(أعمال المكتب)',
                    style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 25,)
                ],
              ),
              SizedBox(height: 20,),

              Row(
                  children: [
                    _container4ta72e2(
                        Almo7amy: 'اشرف اشرف خالد محمد',
                        name: 'اشرف اشرف خالد محمد',
                        code: 'CL912',
                        casetype: 'جنائي',
                        casecode: '65424452',
                        khesmname:'///',
                        type: '',
                        time: '',
                        mawdoo3: '', casenum: ' 54 20', location: '', typeel3ml: '', date: '',
                        note: '', shakwanum: '', Mo72e2name: ''
                    ),

                  ]),]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }


  Widget _container4ta72e2({
    required String name,
    required String code,
    required String note,
    required String casetype,
    required String casecode,
    required String khesmname,
    required String type,
    required String time,
    required String mawdoo3,
    required String casenum,
    required String location,
    required String typeel3ml,
    required String date,
    required String shakwanum,
    required String Mo72e2name,
    required String Almo7amy,

    d,
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
                            Text(Almo7amy,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :المحامي الدكتور',
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

                              Text(name,
                                  style: GoogleFonts.almarai(
                                      fontSize: 13,
                                      color: Colors.black)),

                            Text(' :الموكل',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 80,
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
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :الخصم',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 79,
                            child:
                            Text(type,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                            Text(' :نوع التحقيق',
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
                            SizedBox(width: 96.5,
                              child:
                              Text(mawdoo3,
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.almarai(
                                      fontSize: 15,
                                      color: Colors.black)),),
                            Text(' :الموضوع',
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
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': رقم القضية ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 63,
                              child:
                              Text(location,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :مكان التحقيق',
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
                            Text(date,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': تاريخ التحقيق ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 66,
                              child:
                              Text(Mo72e2name,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :اسم التحقيق',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),
                            ]),


                            SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(time,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': وقت التحقيق ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 67,
                              child:
                              Text(shakwanum,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :رقم الشكوى',
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
                            Text(note,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :الملاحظة',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


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