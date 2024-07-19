import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Mowakel_Pages/7agz_maw3ed.dart';
import 'package:techno3adalaa/Mowakel_Pages/cases.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:flutter/services.dart';

import 'Malia_Mowakel.dart';


class OptionChoose extends StatefulWidget {
  @override
  _OptionChooseState createState() => _OptionChooseState();
}

class _OptionChooseState extends State<OptionChoose> {
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
                  ), Positioned(
                    bottom: 179,
                    left: 10,
                    child: IconButton(
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/afterlogin');
                    },
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(


                      icon:Image.asset('assets/update.png',width: 26,
                        height: 26,),


                      onPressed: () {  },
                    ),
                    SizedBox(height: 0, width: 190,),
                    Positioned(
                      child: Text(
                        ' اخر المستجدات     ',
                        style: GoogleFonts.almarai(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    container4updates(mola5s: '', casecode: '65424452', name: '   المحامي الدكتور عبدالله مزيد سعد العازمي', date: '7/4/2024', mawdoo3: ' طلب صوره من عقد الايجار'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    container4updates(mola5s: '', casecode: '65424452', name: '   المحامي الدكتور عبدالله مزيد سعد العازمي', date: '7/4/2024', mawdoo3: ' طلب صوره من عقد الايجار'),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new Cases(),
                      ),
                    );                        },
                  child:
                Container(
                    height: 79,
                    width: 359,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top left
                        ),
                      ],
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Image.asset('assets/case9.png',
                              width: 75,
                              height: 57,
                            ) // Replace with your desired icon
                        ),
                        Text(
                          'القضايا   ', // Replace with your desired text
                          style: GoogleFonts.almarai(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    )
                ),),
                SizedBox(height: 23,),

                GestureDetector(
                  onTap: (){Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MaliaMowakel(),
                    ),
                  );},
                  child:

                Container(
                    height: 79,
                    width: 359,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top left
                        ),
                      ],
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Image.asset('assets/dollar2.png',
                              width: 75,
                              height: 57,) // Replace with your desired icon
                        ),
                        Text(
                          'المالية   ', // Replace with your desired text
                          style: GoogleFonts.almarai(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    )
                ),),
                      SizedBox(height: 22,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (){Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Hagz(),
                                ),
                              );},
                              child:

                          Container(
                              height: 90,
                              width: 205,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 5, // Blur radius
                                    offset: Offset(0, 3), // Offset from the top left
                                  ),
                                ],
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'حجز موعد', // Replace with your desired text
                                    style: GoogleFonts.almarai(
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Image.asset('assets/7agz.png',
                                    width: 60,
                                    height: 60,) // Replace with your desired icon


                                ],
                              )
                          ),),
                          SizedBox(width: 36,),
                          Container(
                              height: 90,

                              width: 118,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 5, // Blur radius
                                    offset: Offset(0, 3), // Offset from the top left
                                  ),
                                ],
                              ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'رفع مستند', // Replace with your desired text
                                style: GoogleFonts.almarai(
                                  fontSize: 24,
                                ),
                              ),
                             SizedBox(height: 10,),
                             Image.asset('assets/docc.png',
                                    width: 49,
                                    height: 45,) // Replace with your desired icon


                            ],
                          )
                      ),



                        ]



                      ),





                SizedBox(height: 15,),
                  ]
          ),),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );

  }


  Widget container4updates({
    required String mola5s,
    required String casecode,
    required String name,
    required String date,
    required String mawdoo3,
  }) {
    return Container(
      height: 59, // Increased height to accommodate two rows
      width: 359,
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
                    fontSize: 12,
                  ),
                ),

                 SizedBox(width: 230,
                 child: Text(name,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.almarai(
                    fontSize: 12,
                  ),),),

                Text(
                  ' : المرسل',
                  style: GoogleFonts.almarai(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 3,),

              ],
            ),
            Row(
              children: [
                SizedBox(width: 6,),
                Text(casecode,
                  style: GoogleFonts.almarai(
                  fontSize: 12,
                ),),
                Text(': كود القضية ',
                  style: GoogleFonts.almarai(
                  fontSize: 12,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 177,
                child:
                Text(mawdoo3,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.almarai(
                    fontSize: 12,
                  ),
                ),),
                Text(': الموضوع',
                  style: GoogleFonts.almarai(
                    fontSize: 12,
                      fontWeight: FontWeight.bold

                  ),),



              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Adjust alignment as needed
              children: [

                Text(mola5s,
                  style: GoogleFonts.almarai(
                    fontSize: 12,

                  ),
                ),
                // Add your new row elements here
                Text(
                  ': الملخص',
                  style: GoogleFonts.almarai(
                    fontSize: 13,
                      fontWeight: FontWeight.bold

                  ),
                ),
                SizedBox(width: 3,),

              ],
            ),
          ],
        ),

    );}}