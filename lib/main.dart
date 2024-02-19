import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:techno3adalaa/Login_Page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
 // await Firebase.initializeApp();
  runApp(MyApp());
}

Future<void> saveData() async {
  try {
    // Access Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    // Reference to the "first" collection
    CollectionReference collectionReference = firestore.collection('first');
    // Add a new document with a generated ID
    await collectionReference.add({
      'two': 'two',
    });

    print('Document saved to Firestore!');
  } catch (e) {
    print('Error saving document: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Call saveData() after Firebase has been initialized
    saveData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}
