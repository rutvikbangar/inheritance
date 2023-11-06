import 'package:first/models/catalog.dart';
import 'package:first/widgets/drawer.dart';
import 'package:first/widgets/itemwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
   final catalogJson = await rootBundle.loadString("assest/files/catalog.json");
   final decodeData =  jsonDecode(catalogJson);
   var productsData = decodeData["products"] ;
   CatalogModel.items = List.from(productsData).map<Items>((items) => Items.fromMap(items)).toList();
   setState(() {});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
          title :  Text("Catalog App")
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index){
              return ItemWidget(item:CatalogModel.items[index],key: GlobalKey(),
               ) ;
            },
          ),
        ),
      ),

    drawer: MyDrawer(),

    );


  }
}





