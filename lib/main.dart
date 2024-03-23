import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   WhoIs(){
     if (kIsWeb) return WebHomePage();
     if (Platform.isAndroid) return AndroidHomePage();
     if (Platform.isWindows) return WinHomePage();
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhoIs(),
    );
  }
}

class AndroidHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android Home Page'),
      ),
      body: Center(
        child: Text('Android'),
      ),
    );
  }
}

class WinHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Win Home Page'),
      ),
      body: Center(
        child: Text('Windows'),
      ),
    );
  }
}

class WebHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Home Page'),
      ),
      body: Center(
        child: Text('Web'),
      ),
    );
  }
}