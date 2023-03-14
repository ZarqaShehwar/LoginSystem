import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_system/Connection%20Firebase/googleSignIn.dart';
import 'package:login_system/firebase_options.dart';
import 'package:login_system/welcomeScreen%20.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>ChangeNotifierProvider(
    create: (context)=>GoogleSigInProvider(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
     
       primarySwatch: Colors.blue ,
      ),
      home:const WelcomeScreen(),
    ),
  );
  }


