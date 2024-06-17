import 'package:flutter/material.dart';

import '../utility/aap_colors.dart';

AppBar profileAppber (){
  return AppBar(
    backgroundColor: AppColors.green,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Imon",style: TextStyle(
            fontSize: 14,
            color: Colors.white
        ),),
        Text("imon153@gmail.com",style: TextStyle(
            fontSize: 12,
            color: Colors.white
        ),),
      ],
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.logout))
    ],
  );
}