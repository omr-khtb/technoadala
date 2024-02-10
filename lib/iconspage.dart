import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart'; // Import SystemChrome

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(210),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/appbar_v2.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    bottom: 60,
                    left: 12,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/justice.png'),
                      backgroundColor: Colors.transparent,
                      radius: 35,
                    ),
                  ),
                  Positioned(
                    bottom: 106,
                    right: 16,
                    child: Text(
                      "مؤمن أواب على",
                      style: GoogleFonts.almarai(
                          fontSize: 25,
                          color: Colors.white

                      ),

                    ),
                  ),
                  Positioned(
                    bottom: 66,
                    right: 16,
                    child: Text(
                      ":رقم القضية",
                      style: GoogleFonts.almarai(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 152,
                    right: 14,
                    child: Icon(
                      Icons.mail_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Positioned(
                    bottom: 152,
                    left: 14,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
            children: [
              Container(
                height: 178,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: [
                    CustomButton(
                      iconPath: 'assets/calendar-day.png',
                      text: '',
                      details: 'جلسات',
                      backgroundColor: Colors.black,
                    ),
                    CustomButton(
                      iconPath: 'assets/users-alt.png',
                      text: '',
                      details: 'جلسات خبراء',
                      backgroundColor: Colors.black,
                    ),
                    CustomButton(
                      iconPath: 'assets/search-alt.png',
                      text: '',
                      details: 'تحقيق',
                      backgroundColor: Colors.black,
                    ),
                    CustomButton(
                      iconPath: 'assets/dollar.png',
                      text: '',
                      details: 'مالية',
                      backgroundColor: Colors.black,
                    ),CustomButton(
                      iconPath: 'assets/briefcase.png',
                      text: '',
                      details: 'ترحيل العمل',
                      backgroundColor: Colors.black,
                    ),
                    CustomButton(
                      iconPath: 'assets/enterprise.png',
                      text: '',
                      details: 'الإجراءات الإدارية',
                      backgroundColor: Colors.black,
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down,size: 35,),
                  ),

                  SizedBox(height: 100, width: 190,),
                  Positioned(
                    child: Text(
                      '   المستجدات     ',
                      style: GoogleFonts.almarai(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 140,),
              Container(

                  height: 97,
                  width: 321,
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
                        padding: EdgeInsets.all(19.0),
                        child: Icon(Icons.insert_drive_file_outlined,size: 60,), // Replace with your desired icon
                      ),
                      Text(
                        'إضافة ملف   ', // Replace with your desired text
                        style: GoogleFonts.almarai(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  )
              )

            ]
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 100,
          width: 60,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Stack(
            children: [


              Center(
                child: FloatingActionButton(
                  onPressed: () {
                    // Handle the onPressed event for the floating button
                  },
                  backgroundColor: Colors.white,
                  child: Icon(Icons.home, color: Colors.black),
                ),
              ),


            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black, // Set the bottom app bar color to black
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white,size: 35,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person_2_outlined, color: Colors.white,size: 35,),
                onPressed: () {},
              ),IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box_outlined, color: Colors.white,size: 35,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications_none_outlined, color: Colors.white,size: 35,),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}