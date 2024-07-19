import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

import 'Login_Page.dart'; // Import SystemChrome

class otp extends StatefulWidget {
  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  String? selectedOption; // Define the variable to hold the selected option
  final defaultPinTheme = PinTheme(
    width: 48,
    height: 63,
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5),
      border: Border.all(color: Color(0xFFF5F5F5)),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );
  final TextEditingController _pinPutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // Change background color to white
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(221),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/appbarv4.png',
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/otp1.png',
                      width: 113,
                      height: 113,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 38,),
                    Text(
                      'رمز التحقق',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 22,),
                    Text(
                      'الرجاء إدخال كلمة المرور المؤقتة المرسلة\n                '
                          'إلى رقم هاتفك المحمول ',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16,
                        color: Color(0xFF666666),
                      ),
                    ),
                    SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate( 6,
                              (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child:SizedBox(width: 61,
                            child: Pinput(
                              length: 1,
                              defaultPinTheme: defaultPinTheme,
                              controller: _pinPutController,
                              pinAnimationType: PinAnimationType.fade,
                            ),
                          ),
                        ),

                    ),),
                    SizedBox(height: 102,),
                    Text(
                      'إعاده إرسال الرمز',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.underline,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 104,
                      height: 38,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          // Change button background color to black
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Set border radius to 12
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'إنهاء',
                          style: GoogleFonts.almarai(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
