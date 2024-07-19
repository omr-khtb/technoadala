import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Case_Details.dart';
import 'package:techno3adalaa/Mowakel_Pages/Option_choose.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:techno3adalaa/ui/DATAUSAGEEE.dart';
import 'Optionspage.dart'; // Import SystemChrome

class Afterlogin extends StatefulWidget {
  @override
  _AfterloginState createState() => _AfterloginState();
}

class _AfterloginState extends State<Afterlogin> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
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
          preferredSize: Size.fromHeight(233),
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
                    right: 139,
                    child: Text(
                      "اختيار الخدمة",
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
                  ),

                ],
              ),
            ),
          ),
        ),
        body: Stack(
            children: [

              ListView(
                  children: [

                    Column(
                      children:[

                        Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children:[
                                _buildButtonContainer(
                              hintText: 'إدارة العمل                                ',

                              iconSize: 40,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/Edaret3ml');

                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },
                            ), SizedBox(width: 29,),
                                _buildButtonContainer(
                              hintText: 'كود القضية/الرقم الألي',
                              iconSize: 40,
                              fonts: 15,
                              onPressed: () {
                                _showTextFieldPopup(context);
//code : L712-number of case on the app

                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },
                            ),
                          ],
                        ),
                            SizedBox(height: 50,),
                            Row(
                              children:[
                                _buildButtonContainer(
                                  hintText: 'فتح ملف                              ',
                                  iconSize: 40,
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/Fat7Malaf');

                                    // Add your logic here that should execute when the button is pressed
                                    // For example, you can navigate to another screen or perform an action
                                  },
                                ), SizedBox(width: 29,),
                                _buildButtonContainer(
                                  hintText: 'QR مسح رمز                               ',
                                  iconSize: 40,
                                  onPressed: () {
                                    // Add your logic here that should execute when the button is pressed
                                    // For example, you can navigate to another screen or perform an action
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height:50,),

                            Row(
                                children: [
                                  _buildButtonContainer(
                                    hintText: 'مواعيدي                                                  ',
                                    iconSize: 40,
                                    onPressed: () {
                                      // Add your logic here that should execute when the button is pressed
                                      // For example, you can navigate to another screen or perform an action
                                    },),
                                  SizedBox(width: 29,),
                                  _buildButtonContainer(
                                    hintText: 'موكليني                                                  ',
                                    iconSize: 40,
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/Mowakleny');

                                      // Add your logic here that should execute when the button is pressed
                                      // For example, you can navigate to another screen or perform an action
                                    },

                                  ),]),

                      ])),
                    ]),
                  ]),
              Positioned(
                top: 330,

                child:

              CustomCircularIndicator(percentage: 0.2),),
    //50% green && 20% yellow && 20% orange && 10% red



              Positioned(
                right: 25,
                bottom: 90,
                child: Container(
                  width: 145, // Set width to 119
                  height: 41,
                  // Set height to 29
                  decoration: BoxDecoration(
                    color: Color(0xFFEBE8E8), // Set background color
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Set shadow color
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                  ),
                  child:


                  Row(
                    children: [

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.0),
                        child: Image.asset(
                          'assets/chatgpt.png', // Replace 'your_icon.png' with your icon asset path
                          width: 30, // Set the width of the icon as needed
                          height: 30, // Set the height of the icon as needed
                          // You can adjust width and height as per your icon's dimensions
                          color: Color(0xFF171616), // Set icon color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:11.0),
                        child: Text(
                          'Chat GPT',
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 25,
                bottom: 150,
                child: Container(
                  width: 145, // Set width to 119
                  height: 41,
                  // Set height to 29
                  decoration: BoxDecoration(
                    color: Color(0xFFEBE8E8), // Set background color
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Set shadow color
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                  ),
                  child:  Row(
                    children: [

                      SizedBox(width: 4,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.0),
                        child: Image.asset(
                          'assets/library.png', // Replace 'your_icon.png' with your icon asset path
                          width: 25, // Set the width of the icon as needed
                          height: 25, // Set the height of the icon as needed
                          // You can adjust width and height as per your icon's dimensions
                          color: Color(0xFF8D8C8C), // Set icon color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:16.0),
                        child: Text(
                          'المكتبة الرقمية',
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),


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


                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new OptionChoose(),
                        ),
                      );                    },
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
    double iconSize = 36.0,
    double fonts=18.0,
    bool isObscureText = false,
    required VoidCallback onPressed,
  }) {
    return Container(

      width: 165,
      height: 58,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Set background color
        borderRadius: BorderRadius.circular(25),
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

          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
              ),
              child: Text(
                hintText,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: fonts,
                  color: Colors.black,

                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _showTextFieldPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('ادخل رقم القضية',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Almarai',
              color: Colors.black,
              fontWeight: FontWeight.bold

            ),),
          content: TextField(
            controller: _textFieldController,
            keyboardType: TextInputType.number,
            maxLength: 6,
            decoration: const InputDecoration(
              hintText: '........',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('إلغاء',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: Colors.black,
                    fontWeight: FontWeight.bold

                ),),
            ),
            TextButton(
              onPressed: () {
                final enteredNumber = _textFieldController.text.trim();
                if (enteredNumber.isNotEmpty) {
                  Navigator.of(context).pop(); // Close the dialog
                      {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Optionspage()));
                  }
                } else {
                  // Show an error message or handle invalid input
                }
              },
              child: const Text('موافق',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: Colors.black,
                    fontWeight: FontWeight.bold

                ),),
            ),
          ],
        );
      },
    );
  }
}


