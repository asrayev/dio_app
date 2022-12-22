import '../models/dynamic_model.dart';
import '../models/product_model.dart';
import '../service/api_service.dart';

class DynamicRepository {
  DynamicRepository({required this.apiService});
  ApiService apiService;

  Future<DynamicModel?> getMyProduct()=> apiService.getItems();


}
