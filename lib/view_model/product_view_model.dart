import 'package:dio_app/data/models/product_model.dart';
import 'package:flutter/cupertino.dart';

import '../data/repository/product_repository.dart';

class ProductViewModel extends ChangeNotifier{
   ProductsModel? productsModel;
   ProductRepository productRepository;

   ProductViewModel({required this.productRepository});

   fetchProduct()async{
     productsModel = await productRepository.getMyProduct();
     notifyListeners();
   }

}