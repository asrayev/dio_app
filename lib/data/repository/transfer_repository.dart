import 'package:dio_app/data/models/Income_model.dart';
import 'package:dio_app/data/models/transfer_model.dart';

import '../models/product_model.dart';
import '../service/api_service.dart';

class TransferRepository {
  TransferRepository({required this.apiService});
  ApiService apiService;

  Future<List<TransferModel>> getTransfer()=> apiService.getTransfer();


}
