import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';

class El2adyaDetails extends StatefulWidget {
  @override
  _El2adyaDetailsState createState() => _El2adyaDetailsState();
}

class _El2adyaDetailsState extends State<El2adyaDetails> {
  List<String> optionsList = [];

  void _showOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'موكل أو خصم؟',
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 20,
                color: Color(0xFF707070),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Align(alignment: Alignment.centerRight,
                  child :Text('موكل ',
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,),),),

                onTap: () {
                  Navigator.of(context).pop();
                  setState(() {
                    optionsList.add('موكل');
                  });
                },
              ),
              ListTile(
                title: Align(alignment: Alignment.centerRight,
                  child :Text('خصم ',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,),),),

                onTap: () {
                  Navigator.of(context).pop();
                  setState(() {
                    optionsList.add('خصم');
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
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
                        Navigator.of(context).pushNamed('/Fat7Malaf');
                      },
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'بيانات القضية',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 20,
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': صفته  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': الموكل',
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': صفته  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': الخصم',
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // Add the rows dynamically above the button
                    for (String option in optionsList)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            _SbuildTextFieldContainer(
                              hintText: ': صفته  ',
                            ),
                            SizedBox(width: 16),
                            _SbuildTextFieldContainer(
                              hintText: ': $option',
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 20),
                        _buildSmallButtonContainer(
                          hintText: 'إضافة',
                          iconPath: 'assets/add.png',
                          iconSize: 28,
                          onTap: _showOptionsDialog,
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                    SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': موضوع الدعوى ',
                    ),SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': الرقم الألي ',
                    ),SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': المكان ',

                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': الدائرة  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': المحكمة الكلية',
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': القاعة  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': الدور',
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),

                    _buildTextFieldContainer(
                      hintText: ': رقم الدعوى ',
                    ),
                    SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': محكمة الإستئناف ',
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': القاعة  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': الدور',
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),

                    _buildTextFieldContainer(
                      hintText: ': رقم الدعوى ',
                    ),SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': محكمة التمييز ',
                    ),SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SbuildTextFieldContainer(
                          hintText: ': القاعة  ',
                        ),
                        SizedBox(width: 16),
                        _SbuildTextFieldContainer(
                          hintText: ': الدور',
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    _buildTextFieldContainer(
                      hintText: ': رقم الدعوى ',
                    ),SizedBox(height: 15,),

                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    SizedBox(width: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 336,
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(20.0),
                              hintText: '.........إضافة ملاحظة',
                              hintStyle: GoogleFonts.almarai(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 115,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4F97EA),
                        ),
                        onPressed: () {},
                        child: Text(
                          'حفظ',
                          style: GoogleFonts.almarai(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 135),
                    SizedBox(
                      width: 115,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4F97EA),
                        ),
                        onPressed: () {},
                        child: Text(
                          'رفع ملف',
                          style: GoogleFonts.almarai(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }

  Widget _buildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 340,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              hintText,
              textAlign: TextAlign.right,
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

  Widget _buildButtonContainer({
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 340,
        height: 62,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  buttonText,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _SbuildTextFieldContainer({
    required String hintText,
    bool isObscureText = false,
  }) {
    return Container(
      width: 162,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              obscureText: isObscureText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              hintText,
              textAlign: TextAlign.right,
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

  Widget _buildSmallButtonContainer({
    required String hintText,
    required String iconPath,
    required VoidCallback onTap,
    double iconSize = 1.0,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 162,
        height: 62,
        decoration: BoxDecoration(
          color: Color(0xFF4F97EA),
          borderRadius: BorderRadius.circular(15),
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(iconPath, width: iconSize, height: iconSize),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                hintText,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
