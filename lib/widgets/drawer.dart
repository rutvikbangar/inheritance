import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    final imageurl = "https://resources.pulse.icc-cricket.com/ICC/photo/2023/10/11/9cc0dccf-ce56-4b7a-8761-dcd0627582e2/GettyImages-1729736981.jpg";
    return Drawer(
      child : Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
            padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(

               margin:EdgeInsets.zero ,
              accountName: Text("Rutvik Bangar"),
               accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
            )
            ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white,),),
          ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email me",textScaleFactor: 1.2,style: TextStyle(color: Colors.white,),),
            )
          ],

        ),
      ),

    );


  }


}