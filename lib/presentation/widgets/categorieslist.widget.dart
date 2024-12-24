import 'package:flutter/material.dart';
import 'package:project_app/domain/entities/categorie.entity.dart';
class Categorieslistwidget extends StatelessWidget {
final CategorieEntity categories;
const Categorieslistwidget({super.key,required this.categories});
@override
Widget build(BuildContext context) {
return SingleChildScrollView(
child: Card(
child: ListTile(
leading: Image.network(
categories.imagecategorie,
width: 68,
height: 68,
),
title: Text(categories.nomcategorie),
),
),
);
}
}