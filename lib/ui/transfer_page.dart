// import 'package:dio_app/view_model/transfer_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class TransferPage extends StatelessWidget {
//   const TransferPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:  Consumer<TransferViewModel>(builder: (context,viewModel,child){
//         if(viewModel.errorForUI.isNotEmpty){
//           return  Center(child: Text(viewModel.errorForUI));
//         }
//         return viewModel.transferModel != null ? Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           color: Color(0xFF2B2B2B),
//           child: ListView.builder(
//               physics: BouncingScrollPhysics(),
//               itemCount: viewModel.transferModel!.length,
//               itemBuilder: (context, index){
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
//                   child: Container(
//                     width: double.infinity,
//                     height: 70,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.black,
//                     ),
//
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 15, left: 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                               height: 50,
//                               width: 50,
//                               child: Image.network(viewModel.transferModel![index].data![0].receiver!.brandImage.toString(),height: 20,width: 20, )),
//
//                           Column(
//                             children: [
//                               SizedBox(height: 15,),
//                               Text(viewModel.transferModel![index].data![0].receiver!.name.toString(), style: TextStyle(color: Colors.white),),
//
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//         ): const Center(child: CircularProgressIndicator());
//       }),
//     );
//   }
// }