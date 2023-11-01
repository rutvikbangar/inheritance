import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
          title :  Text("Catalog App")
      ),
      body: Center(
      child : Container(
       child : Text ("MODEL 1"),
    ),

    ),


    drawer: MyDrawer(),

    );


  }


  }





