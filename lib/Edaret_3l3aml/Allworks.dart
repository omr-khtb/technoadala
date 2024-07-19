import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/Ta72e2.dart';
import 'package:techno3adalaa/Edaret_3l3aml/Galasat_Ma7kma.dart';

class Allworks extends StatefulWidget {
  @override
  _AllworksState createState() => _AllworksState();
}

class _AllworksState extends State<Allworks> {
  final TextEditingController _textFieldController = TextEditingController();
  static const IconData verified = IconData(
      0xe699, fontFamily: 'MaterialIcons');

  bool _isArrow1Up = true;
  bool _isArrow2Up = true;
  bool _isArrow3Up = true;
  bool _isArrow4Up = true;
  bool _showContainer4ta72e2 = false;
  bool _showContainer4ma7kma = false;
  bool _showContainer45obraa = false;
  bool _showContainer4egra2 = false;

  void _toggleArrow1() {
    setState(() {
      _isArrow1Up = !_isArrow1Up;
      _showContainer4ma7kma = !_showContainer4ma7kma;
    });
  }
  void _toggleArrow2() {
    setState(() {
      _isArrow2Up = !_isArrow2Up;
      _showContainer45obraa = !_showContainer45obraa;      // Hide the other container
    });
  }void _toggleArrow3() {
    setState(() {
      _isArrow3Up = !_isArrow3Up;
      _showContainer4egra2 = !_showContainer4egra2;

    });
  }void _toggleArrow4() {
    setState(() {
      _isArrow4Up = !_isArrow4Up;
      _showContainer4ta72e2 = !_showContainer4ta72e2;

    });
  }
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
                    left: 140,
                    child: Text(
                      'جميع الأعمال',
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
        body:  ListView(
        children: [
        Column(
              children: [
                Row(
                  children: [
                    Padding(


                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/sort.png',
                          width: 53.5,
                          height: 42.2,
                        ),
                        onPressed: () {
                          // Add functionality here
                        },
                      ),


                    ),
                    SizedBox(width: 150,),
                    GestureDetector(
                      onTap: () {
                        // Handle button click for the first button
                        // You can add your logic here
                      },

                      child: Container(
                        width: 145,
                        height: 37,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          // Set background color
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              // Set shadow color
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(children: [
                          SizedBox(width: 3,),
                          Image.asset('assets/print.png',
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'طباعة الصفحة',
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),

                        ]),
                      ),
                    ),


                    // Add more Container widgets here if needed
                  ],
                ),

                SizedBox(height: 20,),

                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Container(
                      width: 171,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2),
                          GestureDetector(
                            onTap: _toggleArrow1,
                            child: Container(
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
                              child: Icon(
                                _isArrow1Up
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'جلسات المحكمة',
                            style: GoogleFonts.almarai(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
                if (_showContainer4ma7kma)
                  _container4ma7kma(
                    name: 'Name',
                    code: '12345',
                    casetype: 'Civil',
                    casecode: '67890',
                    khesmname: '',
                    location: '',
                    qarar: '',
                    time: '',
                    mawdoo3: '',
                    casenum: '',
                  ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Container(
                      width: 171,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2),
                          GestureDetector(
                            onTap: _toggleArrow2,
                            child: Container(
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
                              child: Icon(
                                _isArrow2Up
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width:33),
                          Text(
                            'جلسات خبراء',
                            style: GoogleFonts.almarai(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
                SizedBox(height: 30,),
                if (_showContainer45obraa)
                  _container45obraa(
                      name: 'اشرف اشرف خالد',
                      code: 'CL912',
                      casetype: 'جنائي',
                      casecode: '65424452',
                      khesmname:'///',
                      location: '',
                      qarar: '',
                      time: '',
                      mawdoo3: '', casenum: ' 50000/2024 اثبات حاله مستعجل 20', khober: '', qa3a: '', floor: ''
                  ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Container(
                      width: 171,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2),
                          GestureDetector(
                            onTap: _toggleArrow3,
                            child: Container(
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
                              child: Icon(
                                _isArrow3Up
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 64),
                          Text(
                            'الإجراءات',
                            style: GoogleFonts.almarai(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
                SizedBox(height: 30),

                if (_showContainer4egra2)
                  _container4egra2(
                      name: 'اشرف اشرف خالد',
                      code: 'CL912',
                      casetype: 'جنائي',
                      casecode: '65424452',
                      khesmname:'///',
                      type: '',
                      time: '',
                      mawdoo3: '', casenum: ' 54 20', location: '', typeel3ml: '', date: '',
                      note: ''
                  ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Container(
                      width: 171,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2),
                          GestureDetector(
                            onTap: _toggleArrow4,
                            child: Container(
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
                              child: Icon(
                                _isArrow4Up
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 83),
                          Text(
                            'تحقيق',
                            style: GoogleFonts.almarai(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
                SizedBox(height: 30),

                if (_showContainer4ta72e2)

                  _container4ta72e2(
                    name: 'اشرف اشرف خالد محمد',
                    code: 'CL912',
                    casetype: 'جنائي',
                    casecode: '65424452',
                    khesmname:'///',
                    type: '',
                    time: '',
                    mawdoo3: '', casenum: ' 54 20', location: '', typeel3ml: '', date: '',
                    note: '', shakwanum: '', Mo72e2name: ''
                ),

                SizedBox(height: 30),

              ],
            ),]
        ),

        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      ),
    );
  }

  Widget _container4ma7kma({
    required String name,
    required String code,
    required String casetype,
    required String casecode,
    required String khesmname,
    required String location,
    required String qarar,
    required String time,
    required String mawdoo3,
    required String casenum,

    d,
  }) {
    return Column(
        children: [
          SizedBox(height: 20,),
          Row(

              children: [
                SizedBox(width: 25,),

                SizedBox(height: 20,),
                Container(
                    width: 359,
                    height: 154,
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
                        ]
                    ),
                    child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Text(code,

                                style: GoogleFonts.almarai(
                                    fontSize: 15,

                                    color: Colors.black)),

                            Text(' :الرقم الألي',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 102,
                              child:
                              Text(casecode,
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.almarai(
                                      fontSize: 15,
                                      color: Colors.black)),),
                            Text(' :كود القضية',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),

                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(khesmname,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': الخصم ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 126,
                              child:
                              Text(name,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :الموكل',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(mawdoo3,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :موضوعها',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(time,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :معاد الجلسة',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(qarar,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': القرار ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 132,
                              child:

                              Text(location,
                                textAlign: TextAlign.end,

                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :المكان',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(casenum,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),
                            Text(' :رقم القضية',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),


                          ],
                        ),
                        SizedBox(height: 5,),



                      ],
                    )

                ),

              ]


          ),
        ]);
  }
}
Widget _container45obraa({
  required String name,
  required String code,
  required String casetype,
  required String casecode,
  required String khesmname,
  required String location,
  required String qarar,
  required String time,
  required String mawdoo3,
  required String casenum,
  required String khober,
  required String qa3a,
  required String floor,


}) {
  return Column(
      children: [
        Row(

            children: [
              SizedBox(width: 25,),

              SizedBox(height: 20,),
              Container(
                  width: 360,
                  height: 175,
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
                      ]
                  ),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(code,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black)),

                          Text(' :الرقم الألي',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 102,
                            child:
                            Text(casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                          Text(' :كود القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),

                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(khesmname,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': الخصم ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 126,
                            child:
                            Text(name,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :الموكل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(khober,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': الخبير ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 129,
                            child:
                            Text(location,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :المكان',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(time,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :معاد الجلسة',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(qa3a,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': القاعة ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 56,
                            child:
                            Text(floor,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :الدور',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 142,
                            child:
                            Text(qarar,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :القرار',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(casenum,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :رقم القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 5,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(mawdoo3,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :موضوعها',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 3,),







                    ],
                  )

              ),

            ]


        ),
      ]);
}
Widget _container4ta72e2({
  required String name,
  required String code,
  required String note,
  required String casetype,
  required String casecode,
  required String khesmname,
  required String type,
  required String time,
  required String mawdoo3,
  required String casenum,
  required String location,
  required String typeel3ml,
  required String date,
  required String shakwanum,
  required String Mo72e2name,

  d,
}) {
  return Column(
      children: [
        Row(

            children: [
              SizedBox(width: 25,),

              SizedBox(height: 20,),
              Container(
                  width: 360,
                  height: 181,
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
                      ]
                  ),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(name,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black)),

                          Text(' :الموكل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 80,
                            child:
                            Text(casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                          Text(' :كود القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),

                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(khesmname,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :الخصم',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 79,
                            child:
                            Text(type,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :نوع التحقيق',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(code,

                              style: GoogleFonts.almarai(
                                  fontSize: 15,

                                  color: Colors.black)),

                          Text(' :الرقم الألي',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 96.5,
                            child:
                            Text(mawdoo3,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                          Text(' :الموضوع',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),

                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(casenum,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': رقم القضية ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 63,
                            child:
                            Text(location,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :مكان التحقيق',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(date,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),

                            Text(': تاريخ التحقيق ',
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                            SizedBox(width: 66,
                              child:
                              Text(Mo72e2name,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),),
                            Text(' :اسم التحقيق',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(width: 4,),
                          ]),


                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(time,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': وقت التحقيق ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 67,
                            child:
                            Text(shakwanum,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :رقم الشكوى',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(note,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :الملاحظة',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 5,),








                    ],
                  )

              ),

            ]


        ),
      ]);
}
Widget _container4egra2({
  required String name,
  required String code,
  required String note,
  required String casetype,
  required String casecode,
  required String khesmname,
  required String type,
  required String time,
  required String mawdoo3,
  required String casenum,
  required String location,
  required String typeel3ml,
  required String date,

  d,
}) {
  return Column(
      children: [
        Row(

            children: [
              SizedBox(width: 25,),

              SizedBox(height: 20,),
              Container(
                  width: 360,
                  height: 181,
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
                      ]
                  ),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(name,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  color: Colors.black)),

                          Text(' :الموكل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 102,
                            child:
                            Text(casecode,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.almarai(
                                    fontSize: 15,
                                    color: Colors.black)),),
                          Text(' :كود القضية',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),

                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(mawdoo3,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :الموضوع',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(code,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': الرقم الألي ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 132,
                            child:
                            Text(khesmname,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :الخصم',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(casenum,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': رقم القضية ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 107,
                            child:
                            Text(type,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :نوع الإجراء',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(date,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': تاريخ الإجراء ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 107,
                            child:
                            Text(typeel3ml,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :نوع العمل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(time,
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),

                          Text(': وقت الإجراء ',
                            style: GoogleFonts.almarai(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          SizedBox(width: 93,
                            child:
                            Text(location,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.almarai(
                                  fontSize: 13,
                                  color: Colors.black
                              ),),),
                          Text(' :مكان العمل',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 4,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(note,
                            style: GoogleFonts.almarai(
                                fontSize: 13,
                                color: Colors.black
                            ),),
                          Text(' :الملاحظة',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(width: 4,),


                        ],
                      ),
                      SizedBox(height: 5,),







                    ],
                  )

              ),

            ]


        ),
      ]);
}
