import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
const MyDrawer({super.key});
@override
Widget build(BuildContext context) {
return Drawer(
child: ListView(
children: [
const UserAccountsDrawerHeader(
accountName: Text('Mohamed Tounsi',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
accountEmail: Text('mohamed.tounsi@gmail.com'),
currentAccountPicture: CircleAvatar(
backgroundImage: NetworkImage(
"https://encryptedtbn0.gstatic.com/images?q=tbn:ANd9GcRr6stJk0RCFjmfPs0XSVF6RhXl84VDRx5V5g&s"),
),
decoration: BoxDecoration(color: Colors.deepPurpleAccent),
),
// Ajout des ListTile en utilisant les objets Choice
...choices.map((Choice choice) {
return ListTile(
leading: Icon(choice.icon, color: Colors.blueGrey),
textColor: Colors.blueGrey,
title: Text(choice.title),
onTap: () {
print(choice.title);
Navigator.pushNamed(context, '/${choice.title}');
},
);
}),
const AboutListTile(
icon: Icon(
Icons.info,
color: Colors.redAccent,
),
applicationIcon: Icon(
Icons.local_play,
),
applicationName: 'ABC Corporation',
applicationVersion: '1.0.25',
applicationLegalese: '© 2024 Company',
child: Text('About app'),
),
],
),
);
}
}
class Choice {
const Choice({required this.title, required this.icon});
final String title;
final IconData icon;
}
const List<Choice> choices = <Choice>[
Choice(title: 'Profile', icon: Icons.home),
Choice(title: 'Subscribe', icon: Icons.directions),
Choice(title: 'Items', icon: Icons.format_list_bulleted_outlined),
Choice(title: 'Contact', icon: Icons.email_rounded),
Choice(title: 'Settings', icon: Icons.settings),
Choice(title: 'Exit', icon: Icons.exit_to_app),
];