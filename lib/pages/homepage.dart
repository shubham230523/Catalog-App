import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';
import 'package:flutter_catalog/utils/widgets/item_widgets.dart';
class homepage extends StatelessWidget {

final dummyList= List.generate(20, (index) => CatalogModels.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App" , style: TextStyle(color: Colors.white)),

      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context , index){
              return ItemWidget(item: dummyList[index]);
            },
          ),
        ),
        drawer: MyDrawer(),
      ); 
  }
}