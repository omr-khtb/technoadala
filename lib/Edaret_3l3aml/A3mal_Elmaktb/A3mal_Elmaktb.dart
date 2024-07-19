import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:techno3adalaa/ui/DATAUSAGEEE.dart';
import 'package:techno3adalaa/ui/custombutton_v2.dart';

class A3malElmaktb extends StatefulWidget {
  @override
  _A3malElmaktbState createState() => _A3malElmaktbState();
}

class _A3malElmaktbState extends State<A3malElmaktb> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
  String? selectedOption; // Define the variable to hold the selected option

  static const IconData verified = IconData(0xe699, fontFamily: 'MaterialIcons');



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
          preferredSize: Size.fromHeight(219),
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
                    bottom: 80,
                    left: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/justice.png'),
                      backgroundColor: Colors.transparent,
                      radius: 35,
                    ),
                  ),
                  Positioned(
                    bottom: 190,
                    right: 129,
                    child: Text(
                      "أعمال المكتب",
                      style: GoogleFonts.almarai(
                          fontSize: 28,
                          color: Colors.white

                      ),

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
                      ":اسم المستخدم",
                      style: GoogleFonts.almarai(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ), Positioned(
                    bottom: 111,
                    right: 119  ,
                    child: Text(
                      "L712",
                      style: GoogleFonts.almarai(
                          fontSize: 20,
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
                  ),Positioned(
                    bottom: 179,
                    left: 14,
                    child: IconButton(
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/Edaret3ml');
                    },
                    ),

                  ),Positioned(
                    top: 210,
                    right: 54,
                    child: _buildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      },
                    ),
                  ),
                  Positioned(
                      top: 209,
                      left: 40,
                      child:Image.asset('assets/magmo3a.png',
                      width: 54,
                      height: 55,) )

                ],
              ),
            ),
          ),
        ),
        body: Stack(
            children: [

              ListView(
                  children: [


                    Padding(padding: EdgeInsets.only(bottom: 10),
                        child:
                        Column(
                            children: [


                              SizedBox(height: 7,),
                              Container(
                                height: 90, // Increased height to accommodate two rows
                                width: 313,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'عدد الجلسات : 7',
                                            style: GoogleFonts.almarai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'جلسات المحكمة',
                                            style: GoogleFonts.almarai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0, bottom: 2.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(

                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.arrow_back, size: 18),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushNamed('/GalasatMa7kma_A3mal');

                                                    },
                                                    child: Text(
                                                      'اظهار المزيد',
                                                      style: GoogleFonts.almarai(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'من تاريخ : 12/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'الى تاريخ : 16/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 90, // Increased height to accommodate two rows
                                width: 313,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'عدد الجلسات : 7',
                                            style: GoogleFonts.almarai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'جلسات خبراء',
                                            style: GoogleFonts.almarai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0, bottom: 2.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(

                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.arrow_back, size: 18),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushNamed('/Galasat5obra2_A3mal');

                                                    },
                                                    child: Text(
                                                      'اظهار المزيد',
                                                      style: GoogleFonts.almarai(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'من تاريخ : 12/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'الى تاريخ : 16/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 20,),
                              Container(
                                height: 90, // Increased height to accommodate two rows
                                width: 313,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'عدد الإجراءات : 7',
                                            style: GoogleFonts.almarai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'إجراءات',
                                            style: GoogleFonts.almarai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0, bottom: 2.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(

                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.arrow_back, size: 18),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushNamed('/Egra2att_A3mal');
                                                    },
                                                    child: Text(
                                                      'اظهار المزيد',
                                                      style: GoogleFonts.almarai(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'من تاريخ : 12/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'الى تاريخ : 16/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                              SizedBox(height: 20,),
                              Container(
                                height: 90, // Increased height to accommodate two rows
                                width: 313,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'عدد التحقيقات : 7',
                                            style: GoogleFonts.almarai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'تحقيق',
                                            style: GoogleFonts.almarai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0, bottom: 2.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(

                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.arrow_back, size: 18),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushNamed('/Ta72e22_A3mal');


                                                    },
                                                    child: Text(
                                                      'اظهار المزيد',
                                                      style: GoogleFonts.almarai(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'من تاريخ : 12/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'الى تاريخ : 16/5/2024',
                                                style: GoogleFonts.almarai(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/Allworksv2');

                            },

                            child:

                            Container(
                                height: 90, // Increased height to accommodate two rows
                                width: 313,
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
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('جميع الاعمال',
                                      style: GoogleFonts.almarai(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                  ],
                                ),
                              ),




                        ),



                            ]))



                  ]),
            ]),




        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:


        Stack(
          children: [
            Positioned(
              right:175,
              bottom: 35,
              child:SizedBox(
                width: 55,
                height: 55,
                child:
                Image.asset('assets/circle.png'),),

            ),


            Positioned(
              right: 178,
              bottom: 40,


              child: IconButton(


                icon:Image.asset('assets/home.png',width: 33,
                  height: 33,),


                onPressed: () {  },
              ),


            )

          ],
        ),


        bottomNavigationBar: SizedBox(
          height: 70,
          width: 393,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomAppBar(
              color: Color(0xFF4F97EA),
              child: Row(
                children: <Widget>[


                  IconButton(


                    icon:Image.asset('assets/search.png',width: 33,
                      height: 33,),


                    onPressed: () {  },
                  ),
                  SizedBox(width: 50,),
                  IconButton(


                    icon:Image.asset('assets/person2.png',width: 33,
                      height: 33,),


                    onPressed: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                  ),
                  SizedBox(width: 92,),

                  IconButton(


                    icon:Image.asset('assets/settings.png',width: 33,
                      height: 33,),


                    onPressed: () {  },
                  ),
                  SizedBox(width: 41,),

                  IconButton(


                    icon:Image.asset('assets/notifications.png',width: 33,
                      height: 33,),


                    onPressed: () {  },
                  ),

                ],
              ),
            ),
          ),
        ),

      ),
    );


  }

  Widget _buildButtonContainer({
    required String hintText,
    required String imagepath,
    bool isObscureText = false,
    required VoidCallback onPressed,
  }) {
    return Container(

      width: 313,
      height: 83,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Set background color
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],

      ),

      child: Row(
        children: [
          SizedBox(width: 10,),
          Image.asset(
            imagepath,

            height: 55, // Adjust the height as needed
            width: 55,// Adjust the width as needed
          ),

          SizedBox(width: 63,),
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
            ),
            child: Text(
              hintText,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 24,
                color: Colors.black,


              ),
              textAlign: TextAlign.center,
            ),
          ),



        ],
      ),
    );
  }


  _buildDropdownContainer({
    required List<String> options,
    String? selectedOption,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      width: 149,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Align children to the start and end
          children: [
            PopupMenuButton<String>(
              icon: Icon(Icons.arrow_drop_down),
              itemBuilder: (BuildContext context) {
                return options.map((String option) {
                  return PopupMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList();
              },
              onSelected: (String? newValue) {
                onChanged(newValue);
                selectedOption =
                    newValue; // Update selectedOption with the chosen value
              },
            ),
            // Add some space between the arrow and the selected option
            Expanded(
              child: Text(
                selectedOption ?? 'اختيار المجموعة',
                // Display selected option or empty string
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}
