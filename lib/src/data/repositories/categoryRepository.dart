import 'package:comida_app/src/data/models/category.dart';

abstract class CategoryRepository{
  Future<List<Category>> getCategory();
}