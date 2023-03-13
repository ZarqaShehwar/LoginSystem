import 'package:flutter/material.dart';
import 'package:login_system/welcomeScreen%20.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
     
       primarySwatch: Colors.blue ,
      ),
      home:const WelcomeScreen(),
    );
  }
}

