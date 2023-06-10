import 'package:flutter/material.dart';

Widget header() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.language_outlined),),
        IconButton(onPressed: (){}, icon: Icon(Icons.location_on),),
        IconButton(onPressed: (){}, icon: Icon(Icons.search),),
      ],
    ),
    const SizedBox(width: 100.0,),
    Row(
      children: [
        Row(children: [
          Text("eat",style: TextStyle(),),
          Icon(Icons.keyboard_arrow_down_outlined),
        ],),
        Row(children: [
          Text("learn",style: TextStyle(),),
          Icon(Icons.keyboard_arrow_down_outlined),
        ],),
        Row(children: [
          Text("play",style: TextStyle(),),
          Icon(Icons.keyboard_arrow_down_outlined),
        ],),
      ],
    ),
    const SizedBox(width: 100.0,),
    Icon(Icons.ac_unit,size: 50.0,),
  ],
);
