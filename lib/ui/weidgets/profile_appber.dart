import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/udate_profile_sceen.dart';

import '../utility/aap_colors.dart';

AppBar profileAppber (context,[bool fromUpdateProfile = false]){
  return AppBar(
    backgroundColor: AppColors.green,
    title: GestureDetector(
      onTap: (){
        if(fromUpdateProfile ){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UdateProfileSceen()));
      },
      child: Column(
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
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.logout))
    ],
  );
}