import'package:project_app/data/repositories/categorie.repository.dart';
import 'package:project_app/domain/entities/categorie.entity.dart';
class CategorieUseCase {
final CategorieRepository _respository;
CategorieUseCase({required CategorieRepository respository})
: _respository = respository;
Future<List<CategorieEntity?>?> fetchCategories() async {
final result = await _respository.getCategories();
final data = result.map((element) {
return CategorieEntity(
id : element.id ?? "",
nomcategorie: element.nomcategorie ?? "",
imagecategorie: element.imagecategorie ?? "",


);
}).toList();
return data;
}
Future<CategorieEntity?> addCategorie(String nom, dynamic image) async {
final result = await _respository.postCategorie(nom, image);
if (result.isNotEmpty) {
return CategorieEntity(
id: result['id'] ?? "",
nomcategorie: result['nomcategorie'] ?? "",
imagecategorie: result['imagecategorie'] ?? "",
);
}
return null;
}
}