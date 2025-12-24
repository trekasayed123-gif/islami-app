import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/intro.dart';

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
      initialRoute: intro.routName,
      routes: {
        intro.routName:(context) => intro(),
        home.routName:(context) => home(),


      }
    );

  }
  }
