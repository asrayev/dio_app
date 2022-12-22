// import 'package:dio_app/data/models/Income_model.dart';
// import 'package:dio_app/data/repository/Income_repository.dart';
// import 'package:dio_app/data/service/api_service.dart';
// import 'package:flutter/cupertino.dart';
//
// class IncomeViewModel extends ChangeNotifier{
//   List<IncomeModel>? incomeModel;
//   IncomeRepository incomeRepository;
//
//   IncomeViewModel({required this.incomeRepository});
//   String errorForUI = "";
//
//   fetchCategory()async{
//     MyResponse myResponse = (await incomeRepository.getIncomes()) as MyResponse;
//     incomeModel = await incomeRepository.getIncomes() as List<IncomeModel>;
//     if (myResponse.error.isEmpty) {
//       incomeModel = myResponse.data;
//     } else {
//       errorForUI = myResponse.error;
//     }
//     notifyListeners();
//   }
//
// }