import 'package:dio_app/data/models/category_model.dart';
import 'package:dio_app/data/models/product_model.dart';
import 'package:flutter/cupertino.dart';

import '../data/repository/category_repository.dart';
import '../data/repository/product_repository.dart';

class CategoryViewModel extends ChangeNotifier{
  List<CategoryModel>? categoryModel;
  CategoryRepository categoryRepository;

  CategoryViewModel({required this.categoryRepository});


  fetchCategory()async{
    categoryModel = await categoryRepository.getMyProduct() as List<CategoryModel>;
    notifyListeners();
  }

}