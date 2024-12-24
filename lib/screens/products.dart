import 'package:flutter/material.dart';
import 'package:project_app/models/Product.class.dart';
class Products extends StatefulWidget {
const Products({super.key});
@override
ProductsState createState() => ProductsState();
}
class ProductsState extends State<Products> {
@override
Widget build(BuildContext context) {
var myList = <Product>[
Product(1, 'NOKIA-C1', 99, "99 %",
"https://encryptedtbn0.gstatic.com/images?q=tbn:ANd9GcQ4ONgEgqUfVda5qKLzf8RiBMA3r1EtPuQueg&s"),
Product(2, 'BENCO-Y30', 85, "87 %",
"https://encryptedtbn0.gstatic.com/images?q=tbn:ANd9GcQYEJF9ykkfTbblROkLVKmrjQC2k4lbA2yqFQ&s"),
Product(3, 'ITEL-P38', 89, "89 %",
"https://tunisiatech.tn/8033-large_default/smartphone-itel-p38.jpg"),
Product(4, 'SPARKGO22', 75, "80 %",
"https://www.mega.tn/assets/uploads/img/pr_telephonie_mobile/1543051941_211.jpg"),
Product(5, 'POP2F', 70, "65 %",
"https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg")
];

return Scaffold(
body: CustomScrollView(
slivers: [
const SliverAppBar(
backgroundColor: Colors.deepPurpleAccent,
title: Text('Products'),
expandedHeight: 20,
collapsedHeight: 80,
),
const SliverAppBar(
backgroundColor: Colors.deepOrangeAccent,
title: Text('Products List'),
floating: true,
),
SliverList(
delegate:
SliverChildBuilderDelegate((BuildContext context, int index) {
return Card(
margin: const EdgeInsets.all(15),
child: Container(
color: Colors.blue[100 * (index % 9 + 1)],
height: 80,
alignment: Alignment.center,
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
ListTile(
onTap: () {

  Navigator.of(context)
.pushNamed("/details", arguments: myList[index]);
},
leading: Hero(
tag: myList[index].usn,
transitionOnUserGestures: true,
child: Image.network(myList[index].image,fit:
BoxFit.cover),
),
title: Text(
myList[index].designation,
style: const TextStyle(fontSize: 20),
),
subtitle: Text(myList[index].pourcentage),
),
],
),
),
);
}, childCount: myList.length),
),
],
),
);
}
}