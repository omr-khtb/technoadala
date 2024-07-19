import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

import 'Login_Page.dart'; // Import SystemChrome

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? selectedOption; // Define the variable to hold the selected option

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
                  Positioned(
                    bottom: 70,
                    left: 155,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/justice.png'),
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 25,
                    child: Text(
                      "سجل وإبدأ مسيرتك",
                      style: GoogleFonts.almarai(
                          fontSize: 16,
                          fontWeight:FontWeight.bold,
                          color: Colors.black

                      ),

                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 25,
                    child: Text(
                      "أسرع واسهل",
                      style: GoogleFonts.almarai(
                          fontSize: 14,
                          color: Colors.black
                      ),
                    ),
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

                    SizedBox(width: 17),

                    _buildTextFieldContainer(
                      hintText: 'الإسم',

                    ),
                    SizedBox(height: 24),

                    _buildTextFieldContainer(
                      hintText: 'البريد الإلكتروني',
                    ),




                  ],
                ),
                // Two text fields with icons in one row

                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _NbuildTextFieldContainer(
                      hintText: 'رقم الهاتف',
                    ),
                    SizedBox(width: 19,),
                    _buildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      },

                    ),


                  ],


                ),

                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    _NbuildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      },

                    ),
                    SizedBox(width: 15),
                    _buildsmallTextFieldContainer(
                      hintText: 'رقم القيد',
                    ),


                  ],
                ),
                SizedBox(height: 12),

                Row(children: [
                  SizedBox(width: 270,),
                  Text('تاريخ الميلاد',
                  style: TextStyle(fontFamily: 'Almarai',
                    fontSize: 15,
                    color: Colors.black,
                  ),),




                ],),
                SizedBox(height: 12,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    _smallbuildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                        }, titlee: 'السنة',

                    ),
                    SizedBox(width: 16.5),
                    _smallbuildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      }, titlee: 'الشهر',

                    ),
                    SizedBox(width: 16.5),
                    _smallbuildDropdownContainer(
                      options: ['Option 1', 'Option 2', 'Option 3'],
                      selectedOption: selectedOption,
                      onChanged: (String? newValue) {
                        selectedOption = newValue;
                      }, titlee: 'اليوم',

                    ),



                  ],
                ),
                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    _iconbuildTextFieldContainer(
                      hintText: 'الرقم المدني',
                      iconPath: 'assets/madani.png',
                      iconSize: 30,
                    ),



                  ],
//Edit

                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _icon2buildTextFieldContainer(
                      hintText: 'تأكيد كلمة المرور',
                      iconPath: 'assets/passwordshow.png',
                      iconSize: 25,
                    ),
                    SizedBox(width: 13,),
                    _icon2buildTextFieldContainer(
                      hintText: 'كلمة المرور',
                      iconPath: 'assets/passwordshow.png',
                      iconSize: 25,
                    ),


                  ],

                ),
                SizedBox(height: 36,),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                  width: 104,
                  height: 38,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Change button background color to black
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Set border radius to 12
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/phoneauth');
                    },
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


  Widget _buildTextFieldContainer({
    required String hintText,
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '',
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

                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              obscureText: isObscureText,
            ),
          ),
        ],
      ),
    );
  }
  Widget _NbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 214,
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

                hintText: hintText,
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
        ],
      ),
    );
  }

  Widget _buildsmallTextFieldContainer({
    required String hintText,

    bool isObscureText = false,
  }) {
    return Container(
      width: 114,
      height: 47,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Set background color
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
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
                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 16,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              obscureText: isObscureText,
            ),
          ),
        ],
      ),
    );
  }
}
Widget _buildDropdownContainer({
  required List<String> options,
  String? selectedOption,
  required ValueChanged<String?> onChanged,
}) {
  return Container(
    width: 100,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7), // Set shadow color
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end
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
              selectedOption = newValue; // Update selectedOption with the chosen value
            },
          ),
          Expanded(
            child: Text(
               "الصفة", // Display selected option or empty string
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 10,),

        ],
      ),
    ),
  );
}
Widget _NbuildDropdownContainer({
  required List<String> options,
  String? selectedOption,
  required ValueChanged<String?> onChanged,
}) {
  return Container(
    width: 204,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
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
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end
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
              selectedOption = newValue; // Update selectedOption with the chosen value
            },
          ),
          Expanded(
            child: Text(
               "نوع القيد", // Display selected option or empty string
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 10,),

        ],
      ),
    ),
  );
}
Widget _smallbuildDropdownContainer({
  required List<String> options,
  String? selectedOption,
  required ValueChanged<String?> onChanged,
  required String titlee,
}) {
  return Container(
    width: 100,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
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
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Align children to the start and end
        children: [
          PopupMenuButton<String>(
            icon: Icon(Icons.keyboard_arrow_down_outlined),
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
              selectedOption = newValue; // Update selectedOption with the chosen value
            },
          ),
          Expanded(
            child: Text( titlee,

              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 10,),

        ],
      ),
    ),
  );
}
Widget _iconbuildTextFieldContainer({
  required String hintText,
  required String iconPath,
  double iconSize = 1.0,
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
          color: Colors.grey.withOpacity(0.5), // Set shadow color
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),

    child: Row(
      children: [

        SizedBox(width: 15,),

        Image.asset(iconPath, width: iconSize, height: iconSize),






        Expanded(

          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            obscureText: isObscureText,
          ),
        ),

      ],
    ),
  );
}
Widget _icon2buildTextFieldContainer({
  required String hintText,
  required String iconPath,
  double iconSize = 1.0,
  bool isObscureText = false,
}) {
  return Container(
    width: 160,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF5F5F5), // Set background color
      borderRadius: BorderRadius.circular(10),
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
        SizedBox(width: 5.87,),

        Image.asset(iconPath, width: iconSize, height: iconSize),

        Expanded(

          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 14,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            obscureText: isObscureText,
          ),
        ),

      ],
    ),
  );
}
