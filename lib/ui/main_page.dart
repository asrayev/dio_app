import 'package:dio_app/ui/income_page.dart';
import 'package:dio_app/ui/transfer_page.dart';
import 'package:dio_app/ui/veb_page.dart';
import 'package:flutter/material.dart';

class MainiPage extends StatelessWidget {
  const MainiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: ((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IncomePage()));
                }),
                child: Container(
                  height: 70,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                    child: Text("Income page", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: ((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferPage()));
                }),
                child: Container(
                  height: 70,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                    child: Text("Transfer page", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: ((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage()));
                }),
                child: Container(
                  height: 70,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                    child: Text("WebView", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
