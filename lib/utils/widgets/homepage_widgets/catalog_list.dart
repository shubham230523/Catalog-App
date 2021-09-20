import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_detail.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
import 'package:flutter_catalog/utils/widgets/homepage_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModels.items.length,
      itemBuilder: (context , index){
        final catalog = CatalogModels.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
           MaterialPageRoute(
             builder: (context)=> HomeDetailpage(
               catalog: catalog,
               ), 
              ),
            ),
          child: CatalogItem(catalog: catalog));
      },
    );
  }
}


class CatalogItem extends StatelessWidget {
   final Item catalog;
  const CatalogItem({ Key? key  ,required this.catalog}) : assert(catalog!=null) ,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image
              )
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catalog.desc.text.make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder(),)
                    ),

                     child: 'Buy'.text.make(),
                     )
                ]
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      )
    ).white.rounded.square(150).make().py16();
    
  }
}