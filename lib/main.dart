import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            saveData(context); // Call saveData with BuildContext
          },
          child: Text('Save Data'),
        ),
      ),
    );
  }
}

Future<void> saveData(BuildContext context) async {
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Failed to save document: $e'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
