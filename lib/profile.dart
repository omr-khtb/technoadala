  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'package:techno3adalaa/ui/bottombar.dart';
  import 'package:techno3adalaa/ui/custombutton.dart';
  import 'package:flutter/services.dart';
  import 'dart:math' as math;



  class profile extends StatefulWidget {
    @override
    _profileState createState() => _profileState();
  }

  class _profileState extends State<profile> {
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
          preferredSize: Size.fromHeight(88.8),
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
                        Navigator.of(context).pushNamed('/afterlogin');
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        body: Column(
          children:  [

            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Text('عبدالله مزيد العازمي',
                  style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),


                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  width: 243,
                  height: 36,
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('نوع و رقم القيد:457 دستوريه و تمييز',

                    style: GoogleFonts.almarai(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),

                ),
                SizedBox(width: 20,),

                Container(
                  width: 97,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('محامي',

                    style: GoogleFonts.almarai(
                        fontSize: 20,
                        color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),

              ],
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 38,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFF4F97EA),
                    borderRadius: BorderRadius.circular(27), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('أعمالي',

                    style: GoogleFonts.almarai(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 118,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 جلسة',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width: 52,),
                Text(': عدد حضور الجلسات',
                  style: GoogleFonts.almarai(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),

              ],
            ),

            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 118,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 جلسة',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width: 48,),
                Text(': حضور كأصيل ●',
                  style: GoogleFonts.almarai(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 60,),

              ],
            ),
            SizedBox(height: 20,),// Additional body conteSizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 118,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 جلسة',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width: 50,),
                Text(': حضور كمناب ●',
                  style: GoogleFonts.almarai(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 60,),

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 72,
                  height: 35,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12 ), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 ',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width: 112,),
                Text(': الأعمال الإدارية',
                  style: GoogleFonts.almarai(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 118,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 جلسة',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width: 22,),
                Text(': عدد حضور جلسات الخبراء',
                  style: GoogleFonts.almarai(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 118,
                  height: 36,
                  padding: EdgeInsets.only(top: 2),


                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12), // Adjust the border radius as needed
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Grey shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset from the top left
                      ),
                    ],
                  ),
                  child: Text('17 جلسة',

                    style: GoogleFonts.almarai(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,


                  ),
                ),
                SizedBox(width:59,),
                Text(': عدد حضور التحقيقات',
                  style: GoogleFonts.almarai(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),

              ],
            ),

            // Additional body content here
          ],
        ),
          floatingActionButton: Stack(
            children: [
              Positioned(
                top: 140,
                right: 120,
                  child: Container(
                    width: 131,
                    height: 129,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add functionality here
                      },
                        backgroundColor: Colors.transparent,
                        elevation: 0,// Set background color as transparent

                        child: Image.asset('assets/addpic.png',) // Set background color as needed
                    ),
                  ),
                ),

            ],
          ),

          bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


        ),
      );
    }


      }