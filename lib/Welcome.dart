import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/ui/loading.dart';

import 'Malia_page.dart';
import 'afterlogin.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(Welcomee());
}

class Welcomee extends StatefulWidget {
  @override
  _WelcomeeState createState() => _WelcomeeState();
}

class _WelcomeeState extends State<Welcomee> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          backgroundColor: Colors.white, // Change background color to white
          extendBody: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              flexibleSpace: const FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [

                     Positioned(
                      bottom: 10, // Adjusted to center vertically
                      left: 17,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/justice.png'),
                            backgroundColor: Colors.transparent,
                            radius: 45,
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
          child:



                          Image.asset('assets/logo.png',
                          height: 262,
                          width: 222,),),
                          SizedBox(height: 80,width: 10,),
                          CustomLoadingIndicator(),

                        ],
                      ),



              ),





    );
  }
}


