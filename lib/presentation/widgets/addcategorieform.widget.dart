import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_app/presentation/controllers/categorie.controller.dart';
class Addcategorieform extends StatefulWidget {

  const Addcategorieform({super.key});
@override
State<Addcategorieform> createState() => _AddcategorieformState();
}
class _AddcategorieformState extends State<Addcategorieform> {
// Initialisation du contrôleur
final CategorieController _controller = Get.put(CategorieController(
useCase: Get.find(),
));
final _formKey = GlobalKey<FormState>();
late TextEditingController _nomcategorieController;
late TextEditingController _imagecategorieController;

@override
void initState() {
super.initState();
_nomcategorieController = TextEditingController();
_imagecategorieController = TextEditingController();
}
@override
Widget build(BuildContext context) {
return Form(
key: _formKey,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
TextFormField(
controller: _nomcategorieController,
decoration: const InputDecoration(
hintText: "Category name", labelText: "Name"),
validator: (value) {
if (value!.isEmpty) {
return 'Please enter the name';
}
return null;
},
),
TextFormField(
controller: _imagecategorieController,
decoration: const InputDecoration(
hintText: "Category image", labelText: "Image"),
),
Center(

  child: ElevatedButton(
onPressed: () {
// Retourne true si le formulaire est valide, sinon false
if (_formKey.currentState!.validate()) {
print(_nomcategorieController.text);
print(_imagecategorieController.text);
try {
// Appelle la méthode du controller GetX avec les valeursdes champs
_controller.postCategorie(
_nomcategorieController.text,
_imagecategorieController.text,
);
// Si l'ajout est réussi, afficher message
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text('Category addedsuccessfully')),
);
// Redirection vers la page des catégories
Navigator.of(context).pushNamed('/Categories');
} catch (error) {
// Si une erreur survient, afficher un message d'erreur
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('Error adding category:$error')),
);
}
}
},
style: ButtonStyle(
backgroundColor: WidgetStateProperty.all<Color>(
Colors.blueAccent,
),
),
child: const Text("submit"),
),
),
],
),
);
}
}
