import 'package:first/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget{

  final Items item;

  const ItemWidget({required Key key,required this.item}) 
      : assert(item !=null),
        super(key: key);
  
  @override
  Widget build(BuildContext context){
    return ListTile(
      leading:  Image.network(item.image),
      title: Text(item.name,),
      subtitle: Text(item.desc),
      trailing: Text("\₹${item.price}",textScaleFactor: 1.4,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
    );

  }

}