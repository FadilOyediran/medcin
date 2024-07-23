import 'package:flutter/material.dart';
import 'package:medecin/homepage.dart';

class homepages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
        backgroundColor: Color(0xFF1F9FBC), // Couleur de la barre d'applications
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.notifications, color: Color(0xFF1F9FBC)),
                onPressed: () {
                  // Action pour les notifications
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Header avec la photo de l'utilisateur
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/medecin.jpg'), // Remplace avec le chemin de la photo de l'utilisateur
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Bonjour Orlando',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text('Comment vous sentez-vous aujourd\'hui ?'),
              SizedBox(height: 16),

              // Search bar avec bouton d'options
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Rechercher...',
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 36, // Réduit la largeur
                    height: 36, // Réduit la hauteur
                    decoration: BoxDecoration(
                      color: Color(0xFF1F9FBC), // Couleur bleue
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Stack(
                          children: [
                            Positioned(
                              top: 7, // Réduit la position des lignes
                              left: 3,
                              child: Container(
                                width: 30, // Réduit la largeur des lignes
                                height: 2, // Réduit la hauteur des lignes
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 3,
                              child: Container(
                                width: 30,
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 17,
                              left: 3,
                              child: Container(
                                width: 30,
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          // Action pour choisir les options de recherche
                        },
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Upcoming Schedule
              Text(
                'Prochain Rendez-vous',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Color(0xFF1F9FBC), // Couleur d'arrière-plan de la carte
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/medecin2.png'),
                  ),
                  title: Text(
                    'Dr. Reynard',
                    style: TextStyle(color: Colors.black), // Changement en noir
                  ),
                  subtitle: Text(
                    'Consultant en cardiologie\nLun, 16 déc\n10:00 - 14:00',
                    style: TextStyle(color: Colors.black), // Changement en noir
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.phone, color: Color(0xFF1F9FBC)),
                    onPressed: () {
                      // Action on phone icon pressed
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Doctor Speciality
              Text(
                'Spécialité des Docteurs',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildSpecialtyButton(Icons.favorite, 'Cœur', Colors.red),
                  _buildSpecialtyButton(Icons.psychology, 'Neurologue', Color(0xFF1F9FBC)), // Couleur bleue
                  _buildSpecialtyButton(Icons.local_hospital, 'Dentiste', Colors.green),
                  _buildSpecialtyButton(Icons.favorite_border, 'Cardiologue', Colors.red),
                ],
              ),
              SizedBox(height: 16),

              // Popular Doctor
              Text(
                'Docteur Populaire',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Color(0xFF1F9FBC), // Couleur d'arrière-plan de la carte
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/medecin.jpg'),
                  ),
                  title: Text(
                    'Dr. Carlson Leaman',
                    style: TextStyle(color: Colors.black), // Changement en noir
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      Text('4.9 ★ 3,567 Avis', style: TextStyle(color: Colors.black)), // Changement en noir
                    ],
                  ),
                ),
              ),
              Card(
                color: Color(0xFF1F9FBC), // Couleur d'arrière-plan de la carte
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/medecin2.png'),
                  ),
                  title: Text(
                    'Dr. Alessandra Alicia',
                    style: TextStyle(color: Colors.black), // Changement en noir
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      Text('4.7 ★ 2,345 Avis', style: TextStyle(color: Colors.black)), // Changement en noir
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: 'Dossiers médicaux',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0, // Set this to the current index
        selectedItemColor: Color(0xFF1F9FBC), // Couleur bleue pour l'élément sélectionné
        unselectedItemColor: Colors.black, // Couleur noire pour les éléments non sélectionnés
        showUnselectedLabels: true, // Affiche les labels des éléments non sélectionnés
        showSelectedLabels: true, // Affiche les labels des éléments sélectionnés
        selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Taille et poids du texte sélectionné
        unselectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal), // Taille et poids du texte non sélectionné
        onTap: (int index) {
          // Handle navigation on tap
        },
      ),
    );
  }

  Widget _buildSpecialtyButton(IconData icon, String label, Color color) {
    return InkWell(
      onTap: () {
        // Action on tap
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, color: color),
            SizedBox(height: 4),
            Text(label, style: TextStyle(color: color)),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: homepages(),
));
