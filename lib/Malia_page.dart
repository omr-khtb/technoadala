import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/rosom.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart'; // Import SystemChrome

class Malia_page extends StatefulWidget {
  @override
  _Malia_pageState createState() => _Malia_pageState();
}

class _Malia_pageState extends State<Malia_page> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Change background color to white

        extendBody: true,
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
                    right: 169,
                    child: Text(
                      "المالية",
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
                      Navigator.of(context).pushNamed('/optionspage');
                    },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Stack(
            children: [
              ListView(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [SizedBox(height: 60,),
                            _buildTextFieldContainer(
                              hintText: 'رسوم                                                  ',
                              iconPath: 'assets/invoice.png',
                              iconSize: 40,
                              onPressed: () {
                                {
                                  Navigator.of(context).pushNamed('/Rosoom');
                                }
                              },

                            ),
                            SizedBox(height: 47,),
                            _buildTextFieldContainer(
                              hintText: 'مصاريف المكتب                              ',
                              iconPath: 'assets/img_4.png',
                              iconSize: 40,
                              onPressed: () {
                                {
                                  Navigator.of(context).pushNamed('/Masaref');
                                }
                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },
                            ), SizedBox(height: 47,),
                            _buildTextFieldContainer(
                              hintText: 'تحصيل الأموال                                ',
                              iconPath: 'assets/getmoney.png',
                              iconSize: 40,
                              onPressed: () {
                                {
                                  Navigator.of(context).pushNamed('/Ta7sel');
                                }
                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                     ]),
              Positioned(
                  right: 15,
                  bottom: 155,

                  child: Directionality(textDirection: TextDirection.rtl, child:Text(
                    '• اجمالى المبلغ المستحق :',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  )
              ),
                    Positioned(
                      left: 16,
                      bottom: 150,
                      child: Container(
                        width: 119, // Set width to 119
                        height: 29,
                        // Set height to 29
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300, // Set background color
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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:16.0),
                              child: Text(
                                ' ١٢٠ د.ك  ',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF171616),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


            ]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }

  Widget _buildTextFieldContainer({
    required String hintText,
    required String iconPath,
    double iconSize = 36.0,
    bool isObscureText = false,
    required VoidCallback onPressed,
  }) {
    return Container(

      width: 350,
      height: 65,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(iconPath, width: iconSize, height: iconSize),
          ),
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
              ),
              child: Text(
                hintText,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }

}