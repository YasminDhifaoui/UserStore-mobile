import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ExitScreen extends StatelessWidget {
const ExitScreen({super.key});
@override
Widget build(BuildContext context) {
Future.delayed(const Duration(seconds: 2), () {
  SystemNavigator.pop(); // Ferme l'application immédiatement après l'affichage de ce widget
});
return const Scaffold(
body: Center(child: Text('Exiting...')),
);
}
}