// Importation du package Flutter Material
import 'package:flutter/material.dart';
class MyBottomNavigation extends StatelessWidget {
// Constructeur constant avec une clé facultative
const MyBottomNavigation({super.key});
@override
Widget build(BuildContext context) {
// Retourne un widget BottomNavigationBarWidget
return const BottomNavigationBarWidget();
}
}
// Définition de la classe stateful BottomNavigationBarWidget
class BottomNavigationBarWidget extends StatefulWidget {
// Constructeur constant avec une clé facultative
const BottomNavigationBarWidget({super.key});
@override
// Création de l'état associé à ce widget
State<BottomNavigationBarWidget> createState() =>
_BottomNavigationBarWidgetState();
}
// Classe état pour BottomNavigationBarWidget
class _BottomNavigationBarWidgetState
extends State<BottomNavigationBarWidget> {
// Index de l'élément actuellement sélectionné dans la barre de navigation
int _selectedIndex = 0;
// Méthode appelée lorsque l'utilisateur tape sur un élément de la barre de navigation
void _onItemTapped(int index) {
// Mise à jour de l'état avec le nouvel index sélectionné
setState(() {
_selectedIndex = index;
});
}

@override
Widget build(BuildContext context) {
// Retourne un BottomNavigationBar
return BottomNavigationBar(
// Liste des éléments de la barre de navigation
items: const <BottomNavigationBarItem>[
// Élément de la barre de navigation pour la page d'accueil
BottomNavigationBarItem(
icon: Icon(Icons.home),
label: 'Home',
backgroundColor: Colors.purple,
),
// Élément de la barre de navigation pour les documents
BottomNavigationBarItem(
icon: Icon(Icons.add_chart),
label: 'Documents',
backgroundColor: Colors.teal,
),
// Élément de la barre de navigation pour les produits
BottomNavigationBarItem(
icon: Icon(Icons.all_inbox_sharp),
label: 'Products',
backgroundColor: Colors.pink,
),
// Élément de la barre de navigation pour les paramètres
BottomNavigationBarItem(
icon: Icon(Icons.settings),
label: 'Settings',
backgroundColor: Colors.green,
),
],
// Index de l'élément actuellement sélectionné
currentIndex: _selectedIndex,
// Couleur de l'élément sélectionné
selectedItemColor: Colors.amber[800],
// Appel de la méthode lorsque l'utilisateur tape sur un élément
onTap: _onItemTapped,
);
}
}