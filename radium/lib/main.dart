import 'package:flutter/material.dart';
import 'package:radium/LandingPage/LandingPage.dart';
import 'package:radium/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat",),
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 19, 31, 1.0),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}