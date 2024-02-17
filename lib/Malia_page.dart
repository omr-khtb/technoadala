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
        backgroundColor: Colors.white, // Change background color to white

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
                              hintText: 'رسوم',
                              iconPath: 'assets/invoice.png',
                              iconSize: 40,
                              onPressed: () {
                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },

                            ),
                            SizedBox(height: 47,),
                            _buildTextFieldContainer(
                              hintText: 'مصاريف المكتب',
                              iconPath: 'assets/tax.png',
                              iconSize: 40,
                              onPressed: () {
                                // Add your logic here that should execute when the button is pressed
                                // For example, you can navigate to another screen or perform an action
                              },
                            ), SizedBox(height: 47,),
                            _buildTextFieldContainer(
                              hintText: 'تحصيل الأموال',
                              iconPath: 'assets/getmoney.png',
                              iconSize: 40,
                              onPressed: () {
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
                icon: Icon(Icons.search, color: Colors.white, size: 35,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person_2_outlined, color: Colors.white, size: 35,),
                onPressed: () {},
              ), IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box_outlined, color: Colors.white, size: 35,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_none_outlined, color: Colors.white,
                  size: 35,),
                onPressed: () {},
              ),
            ],
          ),
        ),
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
                alignment: Alignment.centerRight,
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