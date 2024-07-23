import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2), // Espace flexible pour pousser les éléments vers le haut
              // Logo de l'application
              Container(
                height: 90, // Hauteur du logo
                child: Image.asset('assets/splash2.png'), // Chemin du logo dans le dossier assets
              ),
              SizedBox(height: 5), // Espace entre le logo et le texte
              // Texte "Inscrivez-vous"
              Text(
                'Inscrivez-vous',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 1), // Espace flexible pour ajuster l'espacement
              // Champ de texte pour le nom
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), // Icône pour le champ de texte
                  hintText: 'Nom',
                  border: UnderlineInputBorder(), // Seulement souligné
                ),
              ),
              SizedBox(height: 20), // Espace entre les champs de texte
              // Champ de texte pour l'email
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), // Icône pour le champ de texte
                  hintText: 'Email',
                  border: UnderlineInputBorder(), // Seulement souligné
                ),
              ),
              SizedBox(height: 20), // Espace entre les champs de texte
              // Champ de texte pour le numéro de téléphone
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone), // Icône pour le champ de texte
                  hintText: 'Numéro de téléphone',
                  border: UnderlineInputBorder(), // Seulement souligné
                ),
              ),
              SizedBox(height: 20), // Espace entre les champs de texte
              // Champ de texte pour le mot de passe
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), // Icône pour le champ de texte
                  hintText: 'Mot de passe',
                  border: UnderlineInputBorder(), // Seulement souligné
                ),
              ),
              Spacer(flex: 2), // Espace flexible pour pousser le bouton en bas
              // Bouton d'inscription
              ElevatedButton(
                onPressed: () {
                  // Action d'inscription à ajouter ici
                },
                child: Text('Inscription'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15), // Taille du bouton
                  textStyle: TextStyle(fontSize: 18), // Taille du texte
                  backgroundColor: Colors.orange, // Couleur du bouton
                  foregroundColor: Colors.white, // Couleur de la police
                ),
              ),
              Spacer(flex: 1), // Espace flexible sous le bouton
            ],
          ),
        ),
      ),
    );
  }
}
