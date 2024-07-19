import 'package:flutter/material.dart';
import 'package:techno3adalaa/afterlogin.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 393,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          color: Color(0xFF4F97EA),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Image.asset(
                  'assets/search.png',
                  width: 33,
                  height: 33,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 30),
              IconButton(
                icon: Image.asset(
                  'assets/person2.png',
                  width: 33,
                  height: 33,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/profile');
                },
              ),
              SizedBox(width: 38),
              IconButton(
                icon: Image.asset(
                  'assets/img_1.png',
                  width: 33,
                  height: 33,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new Afterlogin(),
                    ),
                  );
                },
              ),
              SizedBox(width: 37),
              IconButton(
                icon: Image.asset(
                  'assets/settings.png',
                  width: 33,
                  height: 33,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 28),
              IconButton(
                icon: Image.asset(
                  'assets/notifications.png',
                  width: 33,
                  height: 33,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
