import 'package:dio_app/data/models/category_model.dart';

import '../models/product_model.dart';
import '../service/api_service.dart';

class CategoryRepository {
  CategoryRepository({required this.apiService});
  ApiService apiService;

  Future<List<CategoryModel?>> getMyProduct()=> apiService.getCategories();

}
