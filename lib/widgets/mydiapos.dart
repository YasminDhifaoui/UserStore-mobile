import 'package:flutter/material.dart';
class Mydiapos extends StatefulWidget {
const Mydiapos({super.key});
@override
MydiaposState createState() => MydiaposState();
}
class MydiaposState extends State<Mydiapos> {
int counter = 0; // Compteur pour l'image actuelle
List<String> images = [
'assets/images/i1.jpg',
'assets/images/i2.webp',
'assets/images/i3.webp',
'assets/images/i4.jpg'
];
// Méthode pour passer à l'image suivante
void _nextImage() {
setState(() {
if (counter < images.length - 1) {
counter++;
} else {
counter = 0; // Retour au début pour un diaporama infini
}
});
}
// Méthode pour revenir à l'image précédente
void _previousImage() {
setState(() {
if (counter > 0) {
counter--;
} else {
counter = images.length - 1; // Aller à la dernière image pour un diaporama infini
}
});
}
@override
Widget build(BuildContext context) {
return Column(
mainAxisAlignment: MainAxisAlignment.center, // Centrer le contenu
crossAxisAlignment: CrossAxisAlignment.center, // Centrer le contenu
children: [
Text(
"Image Numéro : ${counter + 1}",
style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
),
const SizedBox(height: 20), // Espacement entre le texte et l'image
Image.asset(
images[counter],
width: 300, // Largeur fixe
height: 200, // Hauteur fixe
fit: BoxFit.cover, // Ajuster le contenu de l'image à la taille du conteneur
),

const SizedBox(height: 20), // Espacement entre l'image et les boutons
Row(
mainAxisAlignment: MainAxisAlignment.center, // Centrer les boutons
children: [
ElevatedButton(
onPressed: _previousImage,
child: const Text('Précédent'),
),
const SizedBox(width: 20), // Espacement entre les boutons
ElevatedButton(
onPressed: _nextImage,
child: const Text('Suivant'),
),
],
),
],
);
}
}