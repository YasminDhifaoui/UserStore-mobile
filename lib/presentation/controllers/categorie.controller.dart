import 'package:get/get.dart';
import 'package:project_app/domain/entities/categorie.entity.dart';
import 'package:project_app/domain/usecases/categorie.usecase.dart';
class CategorieController extends GetxController {
final CategorieUseCase _useCase;
var categoriesList = <CategorieEntity>[].obs;
var isLoading = true.obs;
var isPosting = false.obs;
CategorieController({required CategorieUseCase useCase})
: _useCase = useCase;
fetchAllCategories() {
_useCase.fetchCategories().then((data) {
isLoading.value = false;
if (data != null) {
final result = data
.map(
(element) => CategorieEntity(
id: element?.id ?? "",
nomcategorie: element?.nomcategorie ?? "",
imagecategorie: element?.imagecategorie ?? "",
),
)
.toList();

categoriesList.value = result;
}
}).catchError((error) {});
}

  void postCategorie(String text, String text2) {}

}