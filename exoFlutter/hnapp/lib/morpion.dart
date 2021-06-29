import 'package:flutter/material.dart';

class Morpion extends StatelessWidget {
  const Morpion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Column(children: [
        Align(
          alignment: Alignment.topLeft, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.centerLeft, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.bottomLeft, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        ],),


       Column(children: [
        Align(
          alignment: Alignment.topCenter, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.center, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.bottomCenter, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        ],),


       Column(children: [
        Align(
          alignment: Alignment.bottomRight, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.centerRight, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        
        Align(
          alignment: Alignment.bottomRight, 
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(144.0,144.0),),),
            onPressed: (){},
            child: Text("XXX", style: TextStyle(backgroundColor: Colors.white),),
        ),),
        ],),
      ],),


    );
  }
}