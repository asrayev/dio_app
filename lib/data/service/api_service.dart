import 'package:dio/dio.dart';
import 'package:dio_app/data/models/category_model.dart';
import 'package:dio_app/data/models/dynamic_model.dart';
import 'package:dio_app/data/models/dynamic_model.dart';
import 'package:dio_app/data/service/api_client.dart';
import '../models/Income_model.dart';
import '../models/product_model.dart';
import '../models/transfer_model.dart';
// class MyResponse {
//   MyResponse({
//     this.data,
//     required this.error,
//   });
//
//   dynamic data;
//   String error = "";
// }
class ApiService extends ApiClient {
  Future<DynamicModel?> getItems() async {
    Dio dio = Dio();
    
    try{
      Response response = await dio.get("https://dynamic-view-api.free.mockoapp.net/dynamic");
      if(200 <= response.statusCode! && response.statusCode! < 300){
        return DynamicModel.fromJson(response.data);

      }
    }catch(err){
      print(err.toString());
    }
  }
  // Future<List<CategoryModel>> getCategories()async{
  //    // Dio dio = Dio();
  //   try{
  //     Response response = await dio.get("${dio.options.baseUrl}/categories");
  //     if(response.statusCode == 200){
  //       return (response.data as List?)?.map((e) => CategoryModel.fromJson(e)).toList()??[];
  //
  //     }
  //   } catch (err){
  //     print(err.toString());
  //   }
  //   return [];
  // }
  // Future<List<IncomeModel>> getIncome()async{
  //   // Dio dio = Dio();
  //   MyResponse myResponse = MyResponse(error: "");
  //   try{
  //     Response response = await dio.get("${dio.options.baseUrl}/income-types");
  //     if(response.statusCode == 200){
  //       return (response.data as List?)?.map((e) => IncomeModel.fromJson(e)).toList()??[];
  //
  //     }
  //   } catch (err){
  //     myResponse.error = err.toString();
  //   }
  //   return [];
  // }
  // Future<List<TransferModel>> getTransfer()async{
  //   // Dio dio = Dio();
  //   MyResponse myResponse = MyResponse(error: "");
  //   try{
  //     Response response = await dio.get("${dio.options.baseUrl}/transactions-expenses");
  //     if(response.statusCode == 200){
  //       return (response.data as List?)?.map((e) => TransferModel.fromJson(e)).toList()??[];
  //
  //     }
  //   } catch (err){
  //     myResponse.error = err.toString();
  //   }
  //   return [];
  // }
}