import 'package:first/utiles/routes.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget{
  const loginpage({super.key});


  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var name = "";
  bool onchange = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
  if(_formkey.currentState!.validate()) {
    setState(() {
      onchange = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, routes.homeRoute);
    setState(() {
      onchange = false;
    });
  }
  }
@override
Widget build (BuildContext context) {
  return Material(
    color: Colors.white,
   child: SingleChildScrollView(
     child: Form(
       key : _formkey,
       child: Column(
         children: [
           Image.asset("assest/images/welc.png",),
           SizedBox(
             height: 30.0,
           ),
           Text("LOGIN AS $name",
           style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(
             height: 20.0,
           ),


           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(
               children: [

                 TextFormField (
                   decoration: InputDecoration(
                     hintText:"Enter username",
                     labelText: "Username",

                   ),
                   validator: (value){
                     if(value!.isEmpty){
                       return "Username cannot be empty";
                     }
                 return null;
                   },
                   onChanged: (value) {
                     name = value;
                     setState(() {});
                   } ,
                 ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText:"Enter Password",
              labelText: "Password",

            ),
            validator: (value){
              if (value!.isEmpty){
                return "Password cannot be empty";
              }else if (value!.length<8){
                return "Minimum 8 charactor password required";
              }
           return null ;
            },
          ),
               ],
             )

             ),
            SizedBox(
              height: 40,
            ),

            Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(onchange? 100 : 8),
                child: InkWell(
                  splashColor: Colors.red,
                onTap:() => movetohome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: onchange? 200 : 130,
                  height: onchange? 60 : 40,
                  alignment: Alignment.center,
                  child: onchange? Icon(Icons.done_outline_rounded, color: Colors.white,):
                  Text("LOGIN",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white)
                  ),







                ),
              ),
            )



         ],
       ),
     ),
   ),

  );

}
}
