import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class Tawzee3 extends StatefulWidget {
  @override
  _Tawzee3State createState() => _Tawzee3State();
}

class _Tawzee3State extends State<Tawzee3> {
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
                        Navigator.of(context).pushNamed('/A3maly');
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 130,
                    child: Text(
                      'الأعمال الحالية',
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
        body: Column(
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
              ],
            ),
          ],
        ),
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
      ],
    );
  }
}
