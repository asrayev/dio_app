import 'package:dio_app/data/models/Income_model.dart';

import '../models/product_model.dart';
import '../service/api_service.dart';

class IncomeRepository {
  IncomeRepository({required this.apiService});
  ApiService apiService;

  Future<List<IncomeModel>> getIncomes()=> apiService.getIncome();


}
