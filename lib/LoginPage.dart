import 'package:flutter/material.dart';
import 'package:medecin/SignupPage.dart';
import 'package:medecin/homepage.dart';
//import 'package:medecin/index.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Espace flexible pour pousser les éléments vers le haut
              Spacer(flex: 2),
              // Logo de l'application
              Container(
                height: 90, // Hauteur du logo
                child: Image.asset('assets/splash2.png'), // Chemin du logo dans le dossier assets
              ),
              SizedBox(height: 5), // Espace entre le logo et le texte
              // Texte "Connectez-vous"
              Text(
                'Connectez-vous',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              // Espace flexible pour pousser les éléments vers le bas
              Spacer(flex: 3),
              // Champ de texte pour l'email ou le numéro de téléphone
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), // Icône pour le champ de texte
                  hintText: 'Email ou Numéro de téléphone',
                  border: UnderlineInputBorder(), // Seulement souligné
                ),
              ),
              SizedBox(height: 20), // Espace entre les champs de texte
              // Champ de texte pour le mot de passe
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), // Icône pour le champ de texte
                  hintText: 'Mot de passe',
                  border: UnderlineInputBorder(), // Seulement souligné
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              // Nouveau texte "Mot de passe oublié ?"
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Action à ajouter pour la récupération du mot de passe
                  },
                  child: Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(color: Colors.orange), // Couleur du texte
                  ),
                ),
              ),
              SizedBox(height: 20), // Espace entre le texte et le bouton de connexion
              // Bouton de connexion
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homepages()), // Redirection vers la page d'accueil
                  );
                },
                child: Text('Se connecter'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15), // Taille du bouton
                  textStyle: TextStyle(fontSize: 18), // Taille du texte
                  backgroundColor: Colors.orange, // Couleur du bouton
                  foregroundColor: Colors.white, // Couleur de la police
                ),
              ),
              SizedBox(height: 20), // Espace entre le bouton de connexion et le lien d'inscription
              // Lien pour l'inscription
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()), // Redirection vers la page d'inscription
                    );
                  },
                  child: Text(
                    'Vous n\'avez pas de compte ? Inscrivez-vous',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.underline, // Souligne le texte pour le rendre semblable à un lien
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2), // Espace flexible sous les éléments
            ],
          ),
        ),
      ),
    );
  }
}
