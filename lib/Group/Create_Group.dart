import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/Ta72e2.dart';
import 'package:techno3adalaa/Edaret_3l3aml/Galasat_Ma7kma.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  final TextEditingController _textFieldController = TextEditingController();
  List<Widget> _userTextFields = [];

  static const IconData verified = IconData(0xe699, fontFamily: 'MaterialIcons');

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
            backgroundColor: Colors.white,
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
                      'إنشاء مجموعة',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.white,
                      ),
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
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 158,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5), // Set background color
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
                        children: [
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                hintText: 'مجموعة تكنوم',
                                hintStyle: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 18,
                                  color: Colors.black26,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      ' : اسم المجموعة ',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 78,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Set shadow color
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add functionality here
                        },
                        backgroundColor: Colors.transparent,
                        elevation: 0, // Set background color as transparent
                        child: Image.asset('assets/addpic.png'), // Set background color as needed
                      ),
                    ),
                    SizedBox(width: 77,),
                    Text(
                      ': صورة المجموعة ',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 43,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ': أعضاء المجموعة ',
                      style: GoogleFonts.almarai(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 37,),
                  ],
                ),
                SizedBox(height: 26,),

                _buildTextFieldContainer(hintText: ''),

                ..._userTextFields,
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _userTextFields.insert(
                            0,
                            _buildTextFieldContainer(hintText: ''),
                          );
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
                            SizedBox(width: 115,),
                            Text(
                              'إضافة عضو أخر',
                              style: GoogleFonts.almarai(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 39,),
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
                    SizedBox(width: 50,),
                  ],
                ),
                SizedBox(height: 10,),
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
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/Edaret3ml_Group');

                  },

                  child:
                Container(
                  width: 124,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFF4F97EA), // Set background color
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                      Text(
                        'إنهاء',
                        style:
                        GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      ),
    );
  }

  Widget _buildTextFieldContainer({required String hintText}) {
    return Column(
      children:[
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children :[
          Container(
      width: 319,
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Set background color
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
          Expanded(
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
          Text(
            ': إسم المستخدم ',
            style: GoogleFonts.almarai(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),

        ]),
      SizedBox(height: 18,)]);
  }
}
