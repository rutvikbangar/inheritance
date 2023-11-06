import 'package:flutter/material.dart';
class CatalogModel {
  static List<Items> items = [
    Items(
        id: "01",
        name : "IQOO NEO 6",
        desc: "with snapdragon 870",
        price: 32000,
        color: "#33505a",
        image: "https://emibaba.com/wp-content/uploads/2023/06/iQOO-Neo-6-5G-1.jpg"

    )

  ];
}
class Items {
  final String id;
  final String name ;
  final String desc;
  final num price ;
  final String color ;
  final String image ;

  Items({required this.id, required this.name, required this.desc,
    required this.price,required this.color,required this.image});

 factory Items.fromMap(Map<String,dynamic> map){
return Items(
    id: map["id"],
    name: map["name"],
    desc: map["desc"],
    price: map["price"],
    color: map["color"],
    image: map["image"] ,

);
  }
  toMap() => {
   "id" : id,
    "name" : name,
    "desc" : name,
    "price" : price,
    "color" : color,
    "image" : image,
  };

}

