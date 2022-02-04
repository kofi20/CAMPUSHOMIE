import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'screens/Events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), openEvents);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //for full screen set heightFactor: 1.0,widthFactor: 1.0,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/logo.jpeg'))),
      ),
    );
  }

  void openEvents() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Events()));
  }
}
