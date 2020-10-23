import 'package:flutter/material.dart';
import 'package:flutter_app221911809/src/pages/contador_page.dart';
import 'package:flutter_app221911809/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}

class ContadorPage {}
