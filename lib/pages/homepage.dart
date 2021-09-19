import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';
class homepage extends StatelessWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App" , style: TextStyle(color: Colors.white)),

      ),
        body: Center(
          child: Container(
            child: Text("Welcome inside homepage.dart"),
          ),
        ),
        drawer: MyDrawer(),
      ); 
  }
}