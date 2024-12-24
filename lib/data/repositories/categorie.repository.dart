import
'package:project_app/data/datasource/models/categories.model.dart';
import
'package:project_app/data/datasource/services/categorie.service.dart'
;
class CategorieRepository{
final CategorieService catserv ;
CategorieRepository({required this.catserv});
Future<List<Categorie>> getCategories() async{
final categories=await catserv.getCategories();
return categories.map((c) => Categorie.fromJson(c)).toList();
}
Future<Map> postCategorie(String nom, dynamic image) async {
final categorie = await catserv.postCategorie(nom, image);
return categorie;
}
}