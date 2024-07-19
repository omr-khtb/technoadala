import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Mowakel_Pages/Case_details.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:flutter/services.dart';

import '../Case_Details.dart';
import 'Option_choose.dart';


class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
  bool isIconUp = false;
  bool isClickedOnce = false;



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
          preferredSize: Size.fromHeight(233),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
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
                    bottom: 189,
                    left: 170,
                    child: Text(
                      'القضايا',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.white,
                      ),
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new OptionChoose(),
                        ),
                      );                     },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body:SingleChildScrollView(

          child:Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    container4updates(
                        code: '12346789',
                        casecode: '65424452',
                        name: 'محمد ابراهيم سعد ابو اليزيد',
                        date: 'L12',
                        type: 'نصب واحتيال', onPressed: () {
                          Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new CaseDetailss(),
                      ),
                    );       }),
                  ],
                ),
                ]
          ),),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );

  }


  Widget container4updates({
    required String code,
    required String casecode,
    required String name,
    required String date,
    required String type,
    required VoidCallback onPressed,
  }) {
    return Container(
      height: 98, // Increased height to accommodate two rows
      width: 353,
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
                date,
                style: GoogleFonts.almarai(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(width: 216,
                child: Text(name,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.almarai(
                    fontSize: 15,
                  ),),),

              Text(
                ' : محامي القضية',
                style: GoogleFonts.almarai(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 3,),

            ],
          ),
          SizedBox(height: 13,),
          Row(
            children: [
              SizedBox(width: 6,),
              Text(casecode,
                style: GoogleFonts.almarai(
                  fontSize: 15,
                ),),
              Text(': كود القضية ',
                style: GoogleFonts.almarai(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(width: 116,
                child:
                Text(type,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.almarai(
                    fontSize: 15,
                  ),
                ),),
              Text(': نوع القضية',
                style: GoogleFonts.almarai(
                    fontSize: 15,
                    fontWeight: FontWeight.bold

                ),),



            ],
          ),
          SizedBox(height: 13,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Adjust alignment as needed
            children: [

              GestureDetector(
                onTap: onPressed,
                child:Container(
                  height: 21, // Increased height to accommodate two rows
                  width: 112,
                  decoration: BoxDecoration(
                      color: Color(0xFF4F97EA),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/case1.png',
                        width: 13,
                        height: 13,),
                      SizedBox(width: 4,),
                      Text('تفاصيل القضية',
                        style: GoogleFonts.almarai(
                            fontSize: 14,
                          color: Colors.white

                        ),
                      ),

                    ],
                  ),
                )
              ),
              SizedBox(width:150 ,
              child:
              Text(code,
                textAlign: TextAlign.right,
                style: GoogleFonts.almarai(
                  fontSize: 15,

                ),
              ),),
              // Add your new row elements here
              Text(
                ': الرقم الألي',
                style: GoogleFonts.almarai(
                    fontSize: 15,
                    fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(width: 3,),

            ],
          ),
        ],
      ),

    );}}