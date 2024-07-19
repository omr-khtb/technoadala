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
class Mostanadat extends StatefulWidget {
  @override
  _MostanadatState createState() => _MostanadatState();
}

class _MostanadatState extends State<Mostanadat> {
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
        backgroundColor: Colors.white,

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(233),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace:  FlexibleSpaceBar(
                background: Appbarr(name: 'name',
                  mowakel: 'mowakel',
                  code: 'code', onPressed: (){Navigator.of(context).pushNamed('/optionspage');},)
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Center( // Center widget added
            child: Column(
              children: [
                _container(type: 'تم ارفاق مستند من قبل D80 ', Time: '7:15 pm', Molakhas: 'Molakhas', name: '', title: 'شهاده عدم حصول استئناف', date: '15/5/2024'),
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
  required String title,
  required String name,
  required String Time,
  required String date,

  required String Molakhas,
  bool isObscureText = false,
}) {
  return Stack(

    children: [

      Container(
        height: 100, // Increased height to accommodate two rows
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Column(
                  children: [
                Text(Time,
                  style: GoogleFonts.almarai(
                  fontSize: 15,
                    color: Colors.black,
                  ),),
                Text(date,
                  style: GoogleFonts.almarai(
                  fontSize: 15,
                      color: Colors.black,
                  ),),]),
                SizedBox(width: 299,
                    child:
                    Text(type,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)),
                SizedBox(width: 3,),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Text(title,
              style: GoogleFonts.almarai(
                  fontSize: 18,
                  color: Colors.black,
              ),
            ),
                SizedBox(width: 3,),

              ]),
            Row(
              children: [
                SizedBox(width: 10,),
                GestureDetector(
                  child:
                Container(
                    height: 26, // Increased height to accommodate two rows
                    width: 102,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child:Text('عرض مستند',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.almarai(
                          fontSize: 16,
                          color: Colors.black,
                      ),
                    )

                ))
              ],
            )
          ],
        )
      ),

    ],
  );
}
