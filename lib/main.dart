
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home/aurh/login.dart';

import 'aurh/signup.dart';
import 'layouts/home/home page.dart';
import 'layouts/welcome page/welcomepage.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'point',
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        //textTheme: GoogleFonts.mulishTextTheme(
        // Theme.of(context).textTheme,

      )

      ,
      home: WelcomePage() ,
      routes: {
        "login":(context)=>LogIn(),
        "signup":(context)=>SignUp(),
        "homepage":(context)=>homepage(),


      },
    );
  }
}
