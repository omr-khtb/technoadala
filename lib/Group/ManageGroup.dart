import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class ManageGroup extends StatefulWidget {
  @override
  _ManageGroupState createState() => _ManageGroupState();
}

class _ManageGroupState extends State<ManageGroup> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
  List<Widget> _newRows = [];

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
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/Edaret3ml_Group');
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 125,
                    child: Text(
                      'إدارة المجموعة',
                      style: GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: [


        Column(
          children: [
            SizedBox(height: 55,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _container4members(
                  name: ' مؤمن اواب علي الشوربجي',
                  code: 'عضو A5',
                  title: 'مستشار',
                ),
                SizedBox(width: 9,),
                edit(name: 'تعديل'),

              ],
            ),
            for (var row in _newRows) ...[
              row,
            ],
            SizedBox(height:150,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text(' يمكنك أضافه أعضاء عن طريق الرابط\n : او عن طريق إرسال إيميل',
                  style: GoogleFonts.almarai(
                    fontSize: 19,

                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 319,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5), // Set background color
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set shadow color
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  Text(
                    ': أدخل الإيميل ',
                    style: GoogleFonts.almarai(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 10,),
            Container(
              width: 319,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5), // Set background color
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set shadow color
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  Text(
                    ': نسخ الرابط ',
                    style: GoogleFonts.almarai(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showTextFieldPopup(context);
                    });
                  },
                  child: Container(
                    width: 319,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFF4F97EA), // Set background color
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set shadow color
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/add.png', width: 25, height: 25,),
                        SizedBox(width: 29,),
                        Text(
                          'إضافة عضو بإسم المستخدم',
                          style: GoogleFonts.almarai(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
          ]),
          ]),]),
        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      ),
    );
  }

  Widget _container4members({
    required String name,
    required String title,
    required String code,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'تأكيد توزيع العمل',
                              style: GoogleFonts.almarai(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              ' A5 علي مؤمن اواب علي الشوربجي   ',
                              style: GoogleFonts.almarai(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Your confirmation action
                              },
                              child: Text('تأكيد',
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 303,
                height: 72,
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
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text(
                          title,
                          textAlign: TextAlign.end,
                          style: GoogleFonts.almarai(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' :الصفة',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.almarai(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 4,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.almarai(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Image.asset('assets/member.png', width: 24, height: 24,),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 8,),
                        Text(
                          code,
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30,)
      ],
    );
  }
 Widget edit({
    required String name,

  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Handle button click for the first button
                // You can add your logic here
              },
              child: PopupMenuButton<int>(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                constraints: const BoxConstraints.expand(width: 113, height: 164),

                onSelected: (int value) {
                  // Handle the menu selection
                  switch (value) {
                    case 1:
                      print('مسئول');
                      break;
                    case 2:
                      print('مشرف');
                      break;
                    case 3:
                      print('مراقب');
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/mas2ol.png',
                          width: 27,
                          height: 27,),
                        SizedBox(width: 8,),

                        Text('مسئول',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/moshref.png',
                          width: 27,
                          height: 27,),
                        SizedBox(width: 14,),

                        Text('مشرف',
                          style: GoogleFonts.almarai(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),

                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/mora2eb.png',
                          width: 27,
                          height: 27,),
                        SizedBox(width: 15,),

                        Text('مراقب',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )),
                      ],
                    ),
                  ),
                ],
              child: Container(
                width: 48,
                height: 72,
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
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 3,),

                        Text(
                          name,
                          style: GoogleFonts.almarai(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 11,),
                        Image.asset('assets/editmember.png', width: 24, height: 24,),


                  ],
                ),
              ),
            ),
            )],
        ),

        SizedBox(height: 30,)
      ],
    );
  }


  void _showTextFieldPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'ادخل اسم المستخدم',
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
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
              child: Text(
                'إلغاء',
                style: GoogleFonts.almarai(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                final enteredNumber = _textFieldController.text.trim();
                if (enteredNumber.isNotEmpty) {
                  setState(() {
                    _newRows.add(
                      Column(
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _container4members(
                            name: 'مؤمن اواب علي الشوربجي', // Use the entered number here if needed
                            code: 'عضو A5', // Adjust accordingly
                            title: 'مستشار', // Adjust accordingly
                          ),
                          SizedBox(width: 9,),
                          edit(name: 'تعديل'),
                        ],
                      ),

                        ])
                    );
                  });
                  Navigator.of(context).pop(); // Close the dialog
                } else {
                  // Show an error message or handle invalid input
                }
              },
              child: Text(
                'موافق',
                style: GoogleFonts.almarai(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

}

