import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar HomeTopBar(BuildContext)
{
  return AppBar(
    backgroundColor: Colors.grey.shade200,
    elevation: 0,
    leading:
    IconButton(
      onPressed: (){},
      icon: Icon(Icons.menu,size: 35,color: Colors.grey,),
    ),
    title: const Text("Hello Ji",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28),),
    actions: [IconButton(
      onPressed: (){},
      icon: Image.asset("images/person.png"),
      iconSize: 35,
    )],
  );
}