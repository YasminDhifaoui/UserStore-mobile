import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';


import 'package:project_app/appourter.dart';
import 'package:project_app/data/datasource/localdatasource/user_local_data_source.dart';
import 'package:project_app/data/datasource/services/categorie.service.dart';
import 'package:project_app/data/repositories/categorie.repository.dart';
import 'package:project_app/data/repositories/user.repository.dart';
import 'package:project_app/domain/usecases/categorie.usecase.dart';
import 'package:project_app/domain/usecases/user.usecase.dart';
import 'package:project_app/presentation/controllers/categorie.controller.dart';
import 'package:project_app/presentation/controllers/user.controller.dart';



// Fonction principale qui lance l'application Flutter
void main() {
Get.put(CategorieService());
Get.put(CategorieRepository(catserv: Get.find()));
Get.put(CategorieUseCase(respository: Get.find()));
Get.put(CategorieController(useCase: Get.find()));
// injection authentification
Get.put(UserLocalDataSource());
Get.put(UserRepository(localDataSource: Get.find()));
Get.put(AuthenticateUserUseCase(repository: Get.find()));
Get.put(AuthController(userUseCase: Get.find()));
// Lance l'application en exécutant MyApp
runApp(const MyApp());
}
// Définition de la classe stateless MyApp
class MyApp extends StatelessWidget {
// Constructeur constant avec une clé facultative
const MyApp({super.key});
// Ce widget est la racine de l'application

@override
Widget build(BuildContext context) {
// Retourne un MaterialApp configuré
return MaterialApp(
// Titre de l'application
title: 'Flutter Application',
// Thème de l'application avec une palette de couleurs personnalisée
theme: ThemeData(
// Utilisation d'un ColorScheme basé sur une couleur de départ
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// Activation de Material Design 3
useMaterial3: true,
),
// Désactivation du bandeau "DEBUG"
debugShowCheckedModeBanner: false,
initialRoute: '/',
routes: appRoutes(), // Utilisation des routes depuis le fichierséparé
);
}
}
