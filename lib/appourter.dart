// Importation des packages nécessaires
import 'package:flutter/material.dart';
import 'package:project_app/models/Product.class.dart';
import 'package:project_app/presentation/screens/addcategorie.screen.dart';
import 'package:project_app/presentation/screens/categorieslist.screen.dart';
import 'package:project_app/presentation/screens/register.screen.dart';
import 'package:project_app/screens/details.dart';
import 'package:project_app/screens/documents.dart';
import 'package:project_app/screens/exitscreen.dart';
import 'package:project_app/screens/menu.dart';
import 'package:project_app/screens/myproducts.dart';
import 'package:project_app/screens/products.dart';
import 'package:project_app/screens/subscribe.dart';
import 'package:project_app/widgets/myappbar.dart';
import 'package:project_app/widgets/mybottomnavbar.dart';
import 'package:project_app/widgets/mydrawer.dart';
// Définition d'une fonction qui retourne les routes
Map<String, WidgetBuilder> appRoutes() {
return {
'/': (context) => const Scaffold(
appBar: Myappbar(),
body: Menu(),
drawer: MyDrawer(),
bottomNavigationBar: MyBottomNavigation(),
),
'/Items': (context) => Scaffold(
appBar: AppBar(
title: const Text('My Products'),
),
body: const Myproducts(),
drawer: const MyDrawer(),
bottomNavigationBar: const MyBottomNavigation(),
),
'/Exit': (context) => const ExitScreen(), // Route associée à l'action de fermeture
'/Documents': (context) =>
const Documents(), // Route pour l'écran Documents

'/Products': (context) => const Products(), // Route pour l'écran Products
'/details': (context) {
final product = ModalRoute.of(context)!.settings.arguments as Product;
return Details(
myListElement:
product); // Retourne la page des détails avec le produit passé en argument
}, // Route pour l'écran Details
'/Subscribe': (context) => const Subscribe(), // Route pour l'écran Subscribe

'/Categories': (context) => const Categorieslist(), // Route pour l'écranCategories


'/addcategories': (context) => const Addcategorie(), // Route pour l'écranAddategorie

'/Settings': (context) => const Register(), // Route pour l'écran register


};

}