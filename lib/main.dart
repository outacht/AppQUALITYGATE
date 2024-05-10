import 'package:flutter/material.dart';
import 'package:app_cablage/loginPage.dart';
import 'package:app_cablage/home.dart';
import 'package:firebase_core/firebase_core.dart';


void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(
  //   options: const FirebaseOptions(
  //     apiKey: "AIzaSyBnbXoAYtat-CGr51ViMJTOCXXoOefgfk0",
  //     appId: "1:797807471501:web:c16ae419f0051355ce2bc4",
  //     messagingSenderId: "797807471501",
  //     projectId: "fluttercablage",
  //     storageBucket: "fluttercablage.appspot.com",
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
