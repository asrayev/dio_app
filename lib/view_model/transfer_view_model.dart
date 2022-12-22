//
// import 'package:dio_app/data/models/Income_model.dart';
// import 'package:dio_app/data/models/transfer_model.dart';
// import 'package:dio_app/data/repository/Income_repository.dart';
// import 'package:dio_app/data/repository/transfer_repository.dart';
// import 'package:flutter/cupertino.dart';
//
// import '../data/service/api_service.dart';
//
// class TransferViewModel extends ChangeNotifier{
//   List<TransferModel>? transferModel;
//   TransferRepository transferRepository;
//
//   TransferViewModel({required this.transferRepository});
//   String errorForUI = "";
//   //
//   fetchTransfer()async{
//     MyResponse myResponse = (await transferRepository.getTransfer()) as MyResponse;
//     transferModel = await transferRepository.getTransfer();
//     if (myResponse.error.isEmpty) {
//       transferModel = myResponse.data;
//     } else {
//       errorForUI = myResponse.error;
//     }
//     notifyListeners();
//   }
//
// }