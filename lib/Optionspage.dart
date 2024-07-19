import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Case_Details.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Malia_page.dart';
import 'Mostanadat.dart'; // Import SystemChrome

class Optionspage extends StatefulWidget {
  @override
  _OptionspageState createState() => _OptionspageState();
}

class _OptionspageState extends State<Optionspage> {
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
              Container(
                height: 130,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: [
                    CustomButton(
                      iconPath: 'assets/mostagadat.png',
                      text: '',
                      details: 'المستجدات',
                      onPressed: () {
                      Navigator.of(context).pushNamed('/Mostagadat');


                      {
                      }
                    },
                    ),
                    CustomButton(
                      iconPath: 'assets/calendar-day.png',
                      text: '',
                      details: 'جلسات',
                      onPressed: () {
                      Navigator.of(context).pushNamed('/galasat');


                    },
                    ),
                    CustomButton(
                      iconPath: 'assets/galasat.png',
                      text: '',
                      details: 'جلسات خبراء',
                      onPressed: () {
                      {
                        Navigator.of(context).pushNamed('/galasat5obraa');
                      }
                    },
                    ),
                    CustomButton(
                      iconPath: 'assets/egra2at.png',
                      text: '',
                      details: 'الإجراءات',
                      onPressed: () {
                      {
                        Navigator.of(context).pushNamed('/Egra2at');
                      }
                    },
                    ),CustomButton(
                      iconPath: 'assets/mostandat.png',
                      text: '',
                      details: 'المستندات',
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new Mostanadat(),
                          ),
                        );
                    },
                    ),
                    CustomButton(
                      iconPath: 'assets/search-alt.png',
                      text: '',
                      details: 'تحقيق',
                      onPressed: () {
                      {
                        Navigator.of(context).pushNamed('/Ta72e2');
                      }
                    },
                    ),CustomButton(
                      iconPath: 'assets/dollar.png',
                      text: '',
                      details: 'مالية',
                      onPressed: () {
                      {
                        Navigator.of(context).pushNamed('/Malia');
                      }
                    },
                    ),CustomButton(
                      iconPath: 'assets/qr-scan.png',
                      text: '',
                      details: 'QR رمز ',
                      onPressed: () {
                      {
                        Navigator.of(context).pushNamed('/');
                      }
                    },
                    ),

                  ],
                ),
              ),
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
              Container(
                height: 57, // Increased height to accommodate two rows
                width: 373,
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
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '6:31 pm 7/4/2024',
                            style: GoogleFonts.almarai(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 140),
                          Text(
                            'نوع الإجراء : جلسة محكمة',
                            style: GoogleFonts.almarai(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Adjust alignment as needed
                        children: [
                          // Add your new row elements here
                          Text(
                            'الملخص :تم حضور(عن الموكل) تم تقديم حافظه مستندات'
                            '\n                                        وعن (الخصم) تم تقديم مذكره'
                      ,
                            style: GoogleFonts.almarai(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 57, // Increased height to accommodate two rows
                width: 373,
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
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/redcrosshair.png',
                          width: 11,
                          height: 11,),
                          SizedBox(width: 4,),
                          Text(
                            '6:31 pm 7/4/2024',
                            style: GoogleFonts.almarai(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 110),
                          Text(
                            'الجلسة القادمة: محكمة حولي',
                            style: GoogleFonts.almarai(
                              fontSize: 12,
                              fontWeight:FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Adjust alignment as needed
                        children: [
                          Text(
                            'المدة المتبقية 2 يوم',
                            style: GoogleFonts.almarai(
                              fontSize: 13,
                              fontWeight:FontWeight.bold
                            ),),

                          SizedBox(width: 170,),
                          Text(
                            'لتبادل الإطلاع',
                            style: GoogleFonts.almarai(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 68,
                        width: 135,
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
                              child: Image.asset('assets/editfile.png',
                              width: 30,
                              height: 30,) // Replace with your desired icon
                            ),
                            Text(
                              '         تعديل \n على الملف  ', // Replace with your desired text
                              style: GoogleFonts.almarai(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(width: 20,),
                    Container(
                     height: 68,
                      width: 212,
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
                        child: Image.asset('assets/add_doc.png',
                        width: 36,
                        height: 42,) // Replace with your desired icon
                      ),
                      Text(
                        'إضافة ملف   ', // Replace with your desired text
                        style: GoogleFonts.almarai(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  )
              ),


            ]
        ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(
                    icon: Icon(isIconUp ? Icons.keyboard_arrow_down_sharp : Icons.keyboard_arrow_up_sharp),
                    onPressed: () {
                      setState(() {
                        // Toggle the state of the icon when pressed
                        isIconUp = !isIconUp;

                        // Set isClickedOnce to true when the IconButton is clicked
                        isClickedOnce = true;
                      });
                    },
                  ),
// Display four rows if the IconButton has been clicked once and it's in the down state

                  SizedBox(width: 129,),
                  Text(
                    'معلومات عن القضية   ', // Replace with your desired text
                    style: GoogleFonts.almarai(
                      fontSize: 20,
                    ),
                  ),                      ],

              ),
              if (isClickedOnce && !isIconUp)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        _buildTextFieldContainer(
                          hintText: ':الرقم الألي  ',
                        ), SizedBox(width: 55,),

                        _buildTextFieldContainer(
                          hintText: ':رقم القضية  ',
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        _buildTextFieldContainer(
                        hintText: ':المحكمة  ',
                      ), SizedBox(width: 55,),

                        _buildTextFieldContainer(
                          hintText: ':الدائرة  ',
                        ),],
                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        _buildTextFieldContainer(
                        hintText: ':القاعة  ',
                      ), SizedBox(width: 55,),

                        _buildTextFieldContainer(
                          hintText: ':الدور  ',
                        ),],
                    ),                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [_LbuildTextFieldContainer(
                        hintText: ':موضوعها  ',
                      ), ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                    children: [
                      SizedBox(width: 15,),
                      casedetailsss(hintText: ''),]),
                SizedBox(height: 140,),
            ]
        ),),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );

  }

Widget _buildTextFieldContainer({
  required String hintText,
  bool isObscureText = false,
}) {
  return Container(
    width: 159,
    height: 34,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 14), // Adjust top padding as needed
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: '',
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 14,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              obscureText: isObscureText,
            ),
          ),
        ),
        Text(
          hintText,
          style: TextStyle(
            fontFamily: 'Almarai',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
Widget _LbuildTextFieldContainer({
  required String hintText,
  bool isObscureText = false,
}) {
  return Container(
    width: 373,
    height: 34,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 14), // Adjust top padding as needed
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: '',
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 14,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              obscureText: isObscureText,
            ),
          ),
        ),
        Text(
          hintText,
          style: TextStyle(
            fontFamily: 'Almarai',
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
Widget casedetailsss({
  required String hintText,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new CaseDetails(),
        ),
      );    },
    child:
    Container(
      width: 96,
      height: 37,
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
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios_sharp,color: Colors.black,),
          SizedBox(width: 10,),
          Text('المزيد',
            style:TextStyle(
              fontFamily: 'Almarai',
              fontSize: 15,
              color: Colors.black,

            ),),
        ],
      ),
    ),);}}