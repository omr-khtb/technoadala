import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:techno3adalaa/Login_Page.dart';
import 'firebase_options.dart';

void main() {
 // Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
  
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}