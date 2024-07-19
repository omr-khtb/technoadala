import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/Appbar.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:techno3adalaa/ui/custombutton.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
}
class Mostagadat extends StatefulWidget {
  @override
  _MostagadatState createState() => _MostagadatState();
}

class _MostagadatState extends State<Mostagadat> {
  bool isIconUp = false;
  bool isClickedOnce = false;



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(233),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace:  FlexibleSpaceBar(
              background: Appbarr(name: 'name', mowakel: 'mowakel', code: 'code', onPressed: (){Navigator.of(context).pushNamed('/optionspage');},)
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Center( // Center widget added
            child: Column(
              children: [
                _container(type: 'type', Time: 'hintText', Molakhas: 'Molakhas'),
                // Add more widgets as needed
              ],
            ),
          ),
        ),



        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar

      ),
    );

  }
}


Widget _container({
  required String type,
  required String Time,
  required String Molakhas,
  bool isObscureText = false,
}) {
  return Stack(

    children: [
      SizedBox(height: 20,),

      Container(
        height: 57, // Increased height to accommodate two rows
        width: 373,
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
        child: Stack(
          children: [
            Positioned(
              bottom: 3, // Adjust bottom margin as needed
              left: 5, // Adjust left margin as needed
              child: IconButton(
                icon: Image.asset('assets/document.png', width: 25, height: 25),
                onPressed: () {
                  // Add your onPressed logic here
                },
              ),
            ),
            Positioned(
              top: 27,
              left: 5,
              child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/arrow.png', width: 20),
                label: Padding(
                  padding: EdgeInsets.only(bottom: 9),
                  child: Text(
                    'المزيد',
                    style: GoogleFonts.almarai(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Adjust alignment as needed
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Time,
                        style: GoogleFonts.almarai(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 130),
                      SizedBox(
                        width: 75,
                        child: Text(
                          'type',
                          style: GoogleFonts.almarai(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Text(
                        ' :نوع الإجراء ',
                        style: GoogleFonts.almarai(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            ' :$Molakhas\n',
                            style: GoogleFonts.almarai(
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            ' :الملخص\n',
                            style: GoogleFonts.almarai(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    ],
  );
}
