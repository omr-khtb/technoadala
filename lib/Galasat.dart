import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/ui/galasatui.dart';

import 'Login_Page.dart'; // Import SystemChrome

class Galasat extends StatefulWidget {

  @override
  _GalasatState createState() => _GalasatState();
}

class _GalasatState extends State<Galasat> {
  bool _isArrow1Up = true;
  bool _showContainer4galsa = false;
  void _toggleArrow1() {
    setState(() {
      _isArrow1Up = !_isArrow1Up;
      _showContainer4galsa = !_showContainer4galsa;
    });
  }    //
  String? selectedOption; // Define the variable to hold the selected option
  @override
  Widget build(BuildContext context) {




    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,

    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // Change background color to white

        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(232),
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
                    right: 149,
                    child: Text(
                      "جلسات ",
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
                  ), Positioned(
                    bottom: 145,
                    right: 267,
                    child: SizedBox(
                      width: 18, // Adjust as needed
                      height: 18,
                      child: Image.asset(

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
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [


                  Column(
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [


                          _buildDropdownContainer(
                            options: ['Option 1', 'Option 2', 'Option 3'],
                            selectedOption: selectedOption,
                            onChanged: (String? newValue) {
                              selectedOption = newValue;
                            }, selectedOoption: '        الموكل     ',
                          )

                        ],
                      ),
                      SizedBox(height: 20),


                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        ],),
                      SizedBox(height: 10,),


                    ],
                  ),
                  // Two text fields with icons in one row


                  SmallTextFieldContainer(text: 'تم تقديم مذكرة دفاع',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),
                  SmallTextFieldContainer(text: 'تم تقديم حافظة مستندات',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),
                  SmallTextFieldContainer(text: 'تم تقديم مذكرة بالطلبات الختامية',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),
                  SmallTextFieldContainer(text: 'أجل لورود الملف',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),

                  SmallTextFieldContainer(text: 'أجل الإعلان',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),
                  SmallTextFieldContainer(text: 'أخرى',), // Call the _SmallTextFieldContainer widget
                  SizedBox(height:18,),
                  if(_showContainer4galsa)...[
                    SmallTextFieldContainer(text: 'أجل الإعلان مع الإرشاد',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل الإعلان لمواجهة النيابة',),
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل الإعلان بجهة العمل',),
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'طلب إعلان أصل الصحيفة',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),

                    SmallTextFieldContainer(text: 'أجل لضم الملف',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل لضم المفردات',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل لسماع الشهود',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل لاستكمال الدفوع',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'أجل لاستكمال المستندات',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'تصريح معلومات مدنية',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),

                    SmallTextFieldContainer(text: 'تصريح مستخرج من وزاره التجارة',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'تم تقديم مرفقات ألكترونيه',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'تم تقديم وصل رسوم',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'تم تقديم صحيفة تعديل طلبات',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'تم طلب ضم ملف',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),
                    SmallTextFieldContainer(text: 'محجوزة للحكم ',), // Call the _SmallTextFieldContainer widget
                    SizedBox(height:18,),


                  ],
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      GestureDetector(
                        onTap: _toggleArrow1,
                        child:
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(
                            _isArrow1Up
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 20,
                          ),

                        ]),
                      ),),
// Display four rows if the IconButton has been clicked once and it's in the down state

                      SizedBox(width: 259,),
                      Text('المزيد',
                        style: GoogleFonts.almarai(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10,),

                    ],

                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [


                      _buildDropdownContainer(
                        options: ['Option 1', 'Option 2', 'Option 3'],
                        selectedOption: selectedOption,
                        onChanged: (String? newValue) {
                          selectedOption = newValue;
                        }, selectedOoption: '        الخصم     ',
                      )

                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child:
                        SizedBox(
                          width: 101,
                          height: 29,
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              // Remove default padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    1), // Set a border radius for a rounded square button
                              ),
                              backgroundColor: Color(0xFF4F97EA),
                            ),

                            onPressed: () {},
                            child: Text('اختر التاريخ والوقت',

                                style: GoogleFonts.almarai(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,


                                ),

                                textAlign: TextAlign.center
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 4,),
                      Column(
                        children: [
                          SizedBox(
                            width: 101,
                            height: 29,
                            child:
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4F97EA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      1), // Set a border radius for a rounded square button
                                ),

                              ),

                              onPressed: () {},
                              child: Text('حفظ',
                                style: GoogleFonts.almarai(
                                    fontSize: 16,
                                    color: Colors.white


                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 101,
                            height: 29,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4F97EA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      1), // Set a border radius for a rounded square button
                                ),
                              ),
                              onPressed: () {},
                              child: Text('رفع ملف',
                                style: GoogleFonts.almarai(
                                    fontSize: 14,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                        Container(
                          width: 160,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(
                                9.0), // Border radius
                          ),

                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // Remove default TextField border
                              contentPadding: EdgeInsets.all(20.0),
                              // Padding for text input
                              hintText: '.......إضافة ملاحظة',
                              hintStyle: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black

                              ),
                            ),
                          ),
                        ),),
                      SizedBox(height: 50,),
                    ],
                  ),
                  SizedBox(height: 80,),

                ]),
          ),
        ),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      ),
    );
  }



  Widget _buildDropdownContainer({
    required List<String> options,
    String? selectedOption,
    required ValueChanged<String?> onChanged,
    required String selectedOoption
  }) {
    return Container(
      width: 178,
      height: 43,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color
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
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Align children to the start and end
          children: [
            PopupMenuButton<String>(
              icon: Icon(Icons.keyboard_arrow_down_sharp),
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
                selectedOption =
                    newValue; // Update selectedOption with the chosen value
              },
            ),
            SizedBox(width: 8),
            // Add some space between the arrow and the selected option
            Expanded(
              child: Text(
                selectedOption ?? selectedOoption,
                // Display selected option or empty string
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
