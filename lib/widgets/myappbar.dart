import 'package:flutter/material.dart';
class Myappbar extends StatelessWidget implements PreferredSizeWidget {
const Myappbar({super.key})
: preferredSize = const Size.fromHeight(56.0);
@override
final Size preferredSize;
@override
Widget build(BuildContext context){
return AppBar(
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
title: const Text('Home'),
leading: IconButton(
  icon: const Icon(Icons.menu),
onPressed: () {
Scaffold.of(context).openDrawer();
},
),
actions: <Widget>[
IconButton(
icon: const Icon(Icons.search),
onPressed: () {
// Action pour l'icône de recherche
},
),
IconButton(
icon: const Icon(Icons.more_vert),
onPressed: () {
// Action pour l'icône de menu
},
),
],
);
}
}