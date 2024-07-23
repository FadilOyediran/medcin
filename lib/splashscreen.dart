import 'package:flutter/material.dart';
import 'dart:async';
import 'index.dart'; // Importez le fichier index.dart

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150, // Ajustez la largeur selon vos besoins
          height: 150, // Ajustez la hauteur selon vos besoins
          child: Image.asset('assets/splash2.png'),
        ),
      ),
    );
  }
}
