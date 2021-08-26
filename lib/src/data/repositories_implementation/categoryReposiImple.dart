import 'package:comida_app/src/data/models/category.dart';
import 'package:comida_app/src/data/providers/remote/categoryProvider.dart';
import 'package:comida_app/src/data/repositories/categoryRepository.dart';

class CategoryAleRepIm implements CategoryRepository {
  final CategoryProvider _provider;

  CategoryAleRepIm(this._provider);

  @override
  Future<List<Category>> getCategory() {
    return _provider.getCategory();
  }
}
