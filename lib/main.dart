import 'package:flutter/material.dart';
import 'package:medecin/splashscreen.dart';
//import 'splashscreen.dart'; // Importez le fichier splash_screen.dart

void main() {
  runApp(medecin());
}

class medecin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
