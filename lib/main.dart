import 'package:dio_app/data/repository/category_repository.dart';
import 'package:dio_app/data/repository/product_repository.dart';
import 'package:dio_app/data/service/api_service.dart';
import 'package:dio_app/ui/category_page.dart';
import 'package:dio_app/ui/home_page.dart';
import 'package:dio_app/view_model/category_view_model.dart';
import 'package:dio_app/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
void main() async{



  runApp(

       MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => ProductViewModel(productRepository: ProductRepository(apiService: ApiService()))),
              ChangeNotifierProvider(create: (context) => CategoryViewModel(categoryRepository: CategoryRepository(apiService: ApiService()))),


            ],
            child:  MyApp()),
      );
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return ScreenUtilInit(
      designSize: const Size(423.5294,843.13727),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext contex, Widget? child) {
        return  MaterialApp(

          debugShowCheckedModeBanner: false,
          home: CategoryPage(),
        );
      },
    );
  }
}