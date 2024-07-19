import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

class Mowaklenydetails extends StatefulWidget {
  @override
  _MowaklenydetailsState createState() => _MowaklenydetailsState();
}

class _MowaklenydetailsState extends State<Mowaklenydetails> {
  final TextEditingController _textFieldController = TextEditingController();
  late final double percentage;
  bool showFields = false; // Initialize boolean variable to control visibility

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(88.8),
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
                      backgroundColor: Colors.black,
                      radius: 45,
                    ),
                  ),

                  Positioned(
                    bottom: 13,
                    left: 14,
                    child: IconButton(
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/afterlogin');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 130,
                    child: Text(
                      'بيانات الموكل',
                      style: GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.white

                      ),
                    ),)


                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 31,),
          Padding(padding: EdgeInsets.only(left: 240),
              child:
                  Text('معلومات عن الموكل      ',
                  style: GoogleFonts.almarai(
                      fontSize: 15,
                      color: Colors.black


                ),),),

              Column(
                  children: [
                    SizedBox(height: 20,),
                    _buildTextFieldContainer(title: ': الموكل '),
                    SizedBox(height: 20,),
                    _NbuildTextFieldContainer(),
                    SizedBox(height: 20,),

                    _buildTextFieldContainer(title: ': البريد الإلكتروني '),
                    SizedBox(height: 20,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    _custombuildTextFieldContainer(title: ': الصفة', width: 117, height: 47),
                    SizedBox(width: 12,),
                    _custombuildTextFieldContainer(title: ': اقرب شخص له', width: 202, height: 47)
                      ]),
                    SizedBox(height: 20,),
                    _NbuildTextFieldContainer(),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Toggle the visibility of fields
                            setState(() {
                              showFields = !showFields;
                            });
                          },
                          child: Container(
                            width: 137,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/ringnoti.png', width: 48, height: 48,),
                                SizedBox(width: 7,),
                                Text(
                                  'إخطار',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontFamily: 'Almarai',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                    SizedBox(height: 13,),
                    // Conditionally show text fields and buttons based on the boolean variable
                    if (showFields) ...[
                      _whitebuildTextFieldContainer(title: ': الموضوع'),
                      SizedBox(height: 26,),
                      _whitebuildTextFieldContainer(title: ': الملخص'),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 41,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextButton.icon(
                                  onPressed: () {
                                    // Add functionality here
                                  },
                                  icon: Icon(
                                    Icons.arrow_back, color: Colors.black,size: 20,),
                                  label: Text('إرسال إخطار',
                                    style: TextStyle(
                                      fontFamily: 'Almarai',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12,),
                          Container(
                            height: 55,
                            width: 172,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/add_doc.png', width: 29, height: 34,),
                                SizedBox(width: 20,),
                                Text(
                                  ' إرفاق مستند',
                                  style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
  ]])






                ]),),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }



}

Widget _buildTextFieldContainer({
  required String title,
  bool isObscureText = false,
}) {
  return Container(
    width: 333,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
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

              hintText: '',
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 13),
            ),
            obscureText: isObscureText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}Widget _whitebuildTextFieldContainer({
  required String title,
  bool isObscureText = false,
}) {
  return Container(
    width: 333,
    height: 47,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
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

              hintText: '',
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 13),
            ),
            obscureText: isObscureText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _NbuildTextFieldContainer({
  bool isObscureText = false,
}) {
  return Container(
    width: 333,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            '+965',
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(

              hintText: '',
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 13),
            ),
            obscureText: isObscureText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'رقم الهاتف',
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _custombuildTextFieldContainer({
  required String title,
  required double width,
  required double height,
  bool isObscureText = false,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Set shadow color
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

              hintText: '',
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 15,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 13),
            ),
            obscureText: isObscureText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _whitefnTextFieldContainer({required String title}) {
  return Container(
    height: 60,
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}

