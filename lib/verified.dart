import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/afterlogin.dart';

class VerifiedPage extends StatefulWidget {
  @override
  _VerifiedPageState createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {
  bool _showLoading = true;

  @override
  void initState() {
    super.initState();
    _loadNextPage();
  }

  _loadNextPage() async {
    await Future.delayed(Duration(seconds: 8)); // Delay for 8 seconds
    setState(() {
      _showLoading = false; // Hide loading indicator
    });
    await Future.delayed(Duration(seconds: 2)); // Delay for additional 2 seconds
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Afterlogin(), // Navigate to the option page
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return Scaffold(
      backgroundColor: Colors.white, // Change background color to white
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgofverified.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/verified2.png',
                    height: 146,
                    width: 146,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                'تم التحقق بنجاح',
                style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
              child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),)))
    ],
      ),
    );
  }
}


