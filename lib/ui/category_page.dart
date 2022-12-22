import 'package:dio_app/view_model/category_view_model.dart';
import 'package:dio_app/view_model/product_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DynamicViewModel>(
        builder: (context, viewModel, child){
          if(viewModel.categoryModel == null){
            return Column(
              children: [
                SizedBox(height: 200,),
                Center(
                  child: Text("Data yoq"),
                ),
                InkWell(
                  onTap: ((){
                    context.read<DynamicViewModel>().fetchCategory();
                  }),
                  child: Container(
                    height: 40,
                    width: 300,
                    color: Colors.green,
                    child: Center(
                      child: Text("Get data", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ],
            );
          }
          else {
            var datalist =  viewModel.categoryModel;
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF2B2B2B),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: datalist!.length,

                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(datalist[index].fields![0].type.toString(),height: 20,width: 20, )),

                              Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Text("${datalist[index].fields![0].initialValue}", style: TextStyle(color: Colors.white),),
                                  Text("name: ${datalist[index].fields![0].sort}", style: TextStyle(color: Colors.white),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            );
          }
        },

      ),
    );
  }
}
