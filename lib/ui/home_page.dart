import 'package:dio_app/view_model/product_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductViewModel>(
        builder: (context, viewModel, child){
          if(viewModel.productsModel == null){
            return Column(
              children: [
                SizedBox(height: 200,),
                Center(
                  child: Text("Data yoq"),
                ),
                InkWell(
                  onTap: ((){
                    context.read<ProductViewModel>().fetchProduct();
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
          var datalist =  viewModel.productsModel!.data!;
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF2B2B2B),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: viewModel.productsModel!.data!.length,
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
                              child: Image.network(datalist[index].imageUrl.toString(),height: 20,width: 20, )),

                          Column(
                            children: [
                              SizedBox(height: 15,),
                              Text("id: ${datalist[index].id.toString()}", style: TextStyle(color: Colors.white),),
                              Text("name: ${datalist[index].name}", style: TextStyle(color: Colors.white),),
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
