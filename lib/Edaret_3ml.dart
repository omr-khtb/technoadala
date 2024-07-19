import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:techno3adalaa/ui/DATAUSAGEEE.dart';
import 'package:techno3adalaa/ui/custombutton_v2.dart';
import 'Optionspage.dart'; // Import SystemChrome

class Edaret3ml extends StatefulWidget {
  @override
  _Edaret3mlState createState() => _Edaret3mlState();
}

class _Edaret3mlState extends State<Edaret3ml> {
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
          preferredSize: Size.fromHeight(220  ),
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
                      "إدارة العمل",
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:[

                                        CustomButton2(
                                            iconPath: 'assets/case5.png',
                                            details: 'أعمال المكتب',
                                            fontsize: 21,
                                            onPressed: (){
                                              Navigator.of(context).pushNamed('/A3malElmaktb');

                                            }),
                                        SizedBox(width: 75,),
                                        CustomButton2(
                                            iconPath: 'assets/case.png',
                                            details: 'اعمالي',
                                            fontsize: 22,
                                            onPressed: (){
                                              Navigator.of(context).pushNamed('/A3maly');

                                            })
                                      ],
                                    ),
                                    SizedBox(height: 45,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:[

                                        CustomButton2(
                                            iconPath: 'assets/add 6.png',

                                            details: ' مجموعة'
                                                ' جديدة',
                                            fontsize: 19,
                                            onPressed: (){
                                              Navigator.of(context).pushNamed('/CreateGroup');

                                            }),
                                        SizedBox(width: 75,),
                                        CustomButton2(
                                            iconPath: 'assets/case2.png',
                                            details: 'ترحيل العمل',
                                            fontsize: 20,
                                            onPressed: (){
                                              Navigator.of(context).pushNamed('/Tar7eel3ml');

                                            })
                                      ],
                                    ),
                                    SizedBox(height: 46,),




                                    _buildButtonContainer(hintText: 'الأعمال الحالية', onPressed: () {
                                      Navigator.of(context).pushNamed('/A3mal7alia');

                                    }, imagepath: 'assets/case3.png'),
                                    SizedBox(height: 30,),
                                    _buildButtonContainer(hintText: 'الأعمال المنتهية', onPressed: () {
                                      Navigator.of(context).pushNamed('/A3malMontahya');
                                    }, imagepath: 'assets/case4.png')
                                  ])


                          ),
                        ]),
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


                onPressed: () {
                  Navigator.of(context).pushNamed('/afterlogin');
                },
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
  void _showTextFieldPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ادخل رقم القضية'),
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
              child: const Text('إلغاء'),
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
              child: const Text('موافق'),
            ),
          ],
        );
      },
    );
  }
}


