import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';
import 'package:flutter_catalog/utils/widgets/homepage_widgets/catalog_header.dart';
import 'package:flutter_catalog/utils/widgets/homepage_widgets/catalog_list.dart';
import 'package:flutter_catalog/utils/widgets/item_widgets.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson  = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    CatalogModels.items = List.from(productsData).map<Item>((item) => 
    Item.fromMap(item)).toList(); 

    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              CatalogHeader(),
              if(CatalogModels.items!=null && CatalogModels.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
              
            ]
            ),
        ),
      ),
      ); 
  }
}



























//google pixel 5a
//https://m.media-amazon.com/images/I/71C0OH4WfpL._SX679_.jpg

//macbook air
//https://www.climaxcomputer.com/wp-content/uploads/2020/05/New-Apple-Macbook-Air-Gold-New.jpg

//play station5 
//https://rukminim1.flixcart.com/image/416/416/kj7gwi80/gamingconsole/n/3/c/cfi-1008b01r-825-sony-no-original-imafytxenahqnnpu.jpeg?q=70

//airpods pro
//https://media.croma.com/image/upload/f_auto,q_auto,d_Croma%20Assets:no-product-image.jpg,h_350,w_350/v1605170750/Croma%20Assets/Entertainment/Headphones%20and%20Earphones/Images/8937376841758.png

//galaxy s21 ultra
//https://cdn.shopify.com/s/files/1/0245/9382/5867/products/91BAitkzszL._SL1500_600x.jpg?v=1617105721


//one plus 9 5g
//https://images-eu.ssl-images-amazon.com/images/I/417uExCG6KL._SX300_SY300_QL70_FMwebp_.jpg