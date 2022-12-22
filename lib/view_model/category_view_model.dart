import 'package:dio_app/data/models/category_model.dart';
import 'package:dio_app/data/models/dynamic_model.dart';
import 'package:dio_app/data/models/product_model.dart';
import 'package:dio_app/data/repository/dynamic-repository.dart';
import 'package:flutter/cupertino.dart';

import '../data/repository/category_repository.dart';
import '../data/repository/product_repository.dart';

class DynamicViewModel extends ChangeNotifier{
  List<DynamicModel>? categoryModel;
  DynamicRepository dynamicRepository;

  DynamicViewModel({required this.dynamicRepository});


  fetchCategory()async{
    categoryModel = await dynamicRepository.getMyProduct() as List<DynamicModel>;
    notifyListeners();
  }

}