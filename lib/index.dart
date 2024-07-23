import 'package:flutter/material.dart';
import 'package:medecin/loginpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Première section: Image de fond
          Expanded(
            flex: 2,
            child: Container(

              width: double.infinity,
              child: Image.asset(
                'assets/po.png', 
              ),
            ),
          ),
          // Deuxième section: Texte
          Expanded(
            flex: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BIENVENUE SUR ONMCI',
                  style: TextStyle(
                    fontSize: 30, // Taille de la police augmentée
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2), // Espace entre les deux champs de texte
                Text(
                  'ORDRE NATIONAL DES MEDECINS DE CIV',
                  style: TextStyle(
                    fontSize: 15, // Taille de la police augmentée
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Troisième section: Bouton
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('COMMENCER'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20), // Taille du bouton
                    textStyle: TextStyle(fontSize: 14), // Taille du texte
                    backgroundColor: Colors.orange, // Couleur du bouton
                    foregroundColor: Colors.white, // Couleur de la police
                  ),
                ),
                SizedBox(height: 20), // Espace sous le bouton
              ],
            ),
          ),
        ],
      ),
    );
  }
}
