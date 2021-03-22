import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/Setup/Login.dart';
import 'package:flutter_exam/Setup/signUp.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Firebase Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue,

      ),
      home: LoginIn(),

    );
  }
}