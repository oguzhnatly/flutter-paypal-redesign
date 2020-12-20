import 'package:flutter/material.dart';
import 'package:paypal/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //int _firstLogin = 0;
  Widget _page(BuildContext context) {
    return LoginScreen();
    /*if (_firstLogin == 0) {
      _firstLogin = 1;
      return LoginScreen();
    } else {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBarCustom(),
      );
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paypal App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _page(context),
    );
  }
}
