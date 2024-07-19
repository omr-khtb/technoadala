import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno3adalaa/ui/bottombar.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';




class Tar7eel5obraa extends StatefulWidget {
  @override
  _Tar7eel5obraaState createState() => _Tar7eel5obraaState();
}

class _Tar7eel5obraaState extends State<Tar7eel5obraa> {
  late final double percentage;



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
                      icon:
                      Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 40,
                      ), onPressed: () {
                      Navigator.of(context).pushNamed('/Tar7eel3ml');
                    },
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    bottom: 25,
                    left: 105,
                    child: Text(
                      'ترحيل جلسات الخبراء',
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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 30,),
              Row(
                  children: [
                    SizedBox(width: 23,),

                    InnerShadow(
                      blur: 10,
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      child: Container(
                        width: 159,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),),),
                    SizedBox(width: 2,),
                    Text(': الرجاء إدخال كود القضية',
                      style: GoogleFonts.almarai(
                          fontSize: 20,
                          color: Colors.black

                      ),),]),
              SizedBox(height:26 ,),
              Row(


                children: [
                  SizedBox(width: 23,),

                  Container(
                    width: 281,
                    height: 37,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          "title",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Text(': الموكل',
                    style: GoogleFonts.almarai(
                        fontSize: 20,
                        color: Colors.black

                    ),),
                ],

              ),
              SizedBox(height:24 ,),
              Row(


                children: [
                  SizedBox(width: 26,),

                  Container(
                    width: 255,
                    height: 37,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          "title",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Text(': الرقم الألي',
                    style: GoogleFonts.almarai(
                        fontSize: 20,
                        color: Colors.black

                    ),),
                ],

              ),
              SizedBox(height:24 ,),
              Row(


                children: [
                  SizedBox(width: 27,),

                  Container(
                    width: 230,
                    height: 37,
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "title",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Text(': المعاد السابق',
                    style: GoogleFonts.almarai(
                        fontSize: 20,
                        color: Colors.black

                    ),),
                ],
              ),
              SizedBox(height: 37,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(': سجل معادك القادم ',
                    style: GoogleFonts.almarai(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    ),),
                  SizedBox(width: 10,),
                ],),

              SizedBox(height:24 ,),

              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 93,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5), // Set background color
                        borderRadius: BorderRadius.circular(7),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25), // Set shadow color
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: YearDropdown()),
                  SizedBox(width: 15,),
                  Container(
                      width: 93,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5), // Set background color
                        borderRadius: BorderRadius.circular(7),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25), // Set shadow color
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: MonthDropdown()),
                  SizedBox(width: 15,),

                  Container(
                      width: 93,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5), // Set background color
                        borderRadius: BorderRadius.circular(7),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25), // Set shadow color
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: DayDropdown()),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                  InnerShadow(
                    blur: 10,
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    child: Container(
                      width: 159,
                      height: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),),),
                  SizedBox(width: 12,),

                  Text(': إضافة الوقت     ',
                      style: GoogleFonts.almarai(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )),
                ],
              ), SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                  InnerShadow(
                    blur: 10,
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    child: Container(
                      width: 208,
                      height: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),),),
                  SizedBox(width: 12,),

                  Text(': إضافة القرار     ',
                      style: GoogleFonts.almarai(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )),
                ],
              ),
              SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 357,
                    height: 79,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5), // Set background color
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6), // Set shadow color
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Column(

                        children: [
                          SizedBox(height: 4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "يمكنك الاستعلام من خلال بوابة العدل",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton.icon(
                                icon: Icon(Icons.touch_app_outlined, color: Colors.black),
                                label: Text('اضغط هنا للاستعلام', style:
                                TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),),
                                onPressed: () {
                                  // Define what happens when the button is pressed.
                                  print('Button pressed');
                                },
                              ),],
                          )
                        ]),
                  ),

                ],
              )
            ]),


        bottomNavigationBar: CustomBottomNavigationBar(), // Use the custom bottom navigation bar


      ),
    );
  }
}
class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    Key? key,
    this.blur = 10,
    this.color = Colors.black38,
    this.offset = const Offset(10, 10),
    Widget? child,
  }) : super(key: key, child: child);

  final double blur;
  final Color color;
  final Offset offset;

  @override
  RenderObject createRenderObject(BuildContext context) {
    final _RenderInnerShadow renderObject = _RenderInnerShadow();
    updateRenderObject(context, renderObject);
    return renderObject;
  }

  @override
  void updateRenderObject(BuildContext context, _RenderInnerShadow renderObject) {
    renderObject
      ..color = color
      ..blur = blur
      ..dx = offset.dx
      ..dy = offset.dy;
  }
}

class _RenderInnerShadow extends RenderProxyBox {
  double blur = 10;
  Color color = Colors.black38;
  double dx = 10;
  double dy = 10;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      final Rect rectOuter = offset & size;
      final Rect rectInner = Rect.fromLTWH(
        offset.dx,
        offset.dy,
        size.width - dx,
        size.height - dy,
      );
      final Canvas canvas = context.canvas..saveLayer(rectOuter, Paint());
      context.paintChild(child!, offset); // Using child! to assert non-null
      final Paint shadowPaint = Paint()
        ..blendMode = BlendMode.srcATop
        ..imageFilter = ImageFilter.blur(sigmaX: blur, sigmaY: blur)
        ..colorFilter = ColorFilter.mode(color, BlendMode.srcOut);

      canvas
        ..saveLayer(rectOuter, shadowPaint)
        ..saveLayer(rectInner, Paint())
        ..translate(dx, dy);
      context.paintChild(child!, offset); // Using child! to assert non-null
      context.canvas
        ..restore()
        ..restore()
        ..restore();
    }
  }
}

class DayDropdown extends StatefulWidget {
  @override
  _DayDropdownState createState() => _DayDropdownState();
}

class _DayDropdownState extends State<DayDropdown> {
  String? selectedDay;
  List<String> days = List.generate(31, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return buildDropdown('اليوم', days, selectedDay, (value) {
      setState(() {
        selectedDay = value;
      });
    });
  }

  Widget buildDropdown(String hint, List<String> items, String? selectedItem, ValueChanged<String?> onChanged) {
    return InnerShadow(
      blur: 10,
      color: Colors.black26,
      offset: Offset(1, 1),
      child: Container(
        width: 93,
        height: 43,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: -5,
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text(hint,style: GoogleFonts.almarai(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold

            ),),
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}



class MonthDropdown extends StatefulWidget {
  @override
  _MonthDropdownState createState() => _MonthDropdownState();
}

class _MonthDropdownState extends State<MonthDropdown> {
  String? selectedMonth;
  List<String> months = List.generate(12, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return buildDropdown('الشهر', months, selectedMonth, (value) {
      setState(() {
        selectedMonth = value;
      });
    });
  }

  Widget buildDropdown(String hint, List<String> items, String? selectedItem, ValueChanged<String?> onChanged) {
    return InnerShadow(
      blur: 10,
      color: Colors.black26,
      offset: Offset(1, 1),
      child: Container(
        width: 93,
        height: 43,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: -5,
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text(hint,style: GoogleFonts.almarai(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold

            ),),
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}


class YearDropdown extends StatefulWidget {
  @override
  _YearDropdownState createState() => _YearDropdownState();
}

class _YearDropdownState extends State<YearDropdown> {
  String? selectedYear;
  List<String> years = List.generate(100, (index) => (index + 1920).toString());

  @override
  Widget build(BuildContext context) {
    return buildDropdown('السنه', years, selectedYear, (value) {
      setState(() {
        selectedYear = value;
      });
    });
  }

  Widget buildDropdown(String hint, List<String> items, String? selectedItem, ValueChanged<String?> onChanged) {
    return InnerShadow(
      blur: 10,
      color: Colors.black26,
      offset: Offset(1, 1),
      child: Container(
        width: 93,
        height: 43,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: -5,
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text(hint,style: GoogleFonts.almarai(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold

            ),),
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
