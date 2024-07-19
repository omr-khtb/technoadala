import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallTextFieldContainer extends StatefulWidget {
  final String text;

  SmallTextFieldContainer({required this.text});

  @override
  _SmallTextFieldContainerState createState() => _SmallTextFieldContainerState();
}

class _SmallTextFieldContainerState extends State<SmallTextFieldContainer> {

  bool isChecked = false;

  void didChangeDependencies() {
    super.didChangeDependencies();
    // Reset isChecked to false when navigating to a different page
    isChecked = false;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 55,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Checkbox(
            activeColor: Colors.black,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
          SizedBox(width: 10.0),
          Spacer(),
          Padding(padding: EdgeInsets.only(right: 19),
          child:
          Text(
            widget.text,
            textDirection:TextDirection.rtl,
            textAlign: TextAlign.justify,
            style: GoogleFonts.almarai(
                fontSize: 20,
                color: Colors.black
            ),
          ),),
        ],
      ),
    );
  }
}