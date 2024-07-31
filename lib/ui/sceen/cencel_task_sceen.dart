import 'package:flutter/material.dart';

import 'new_task_sceen.dart';

class CencelTaskSceen extends StatefulWidget {
  const CencelTaskSceen({super.key});

  @override
  State<CencelTaskSceen> createState() => _CencelTaskSceenState();
}

class _CencelTaskSceenState extends State<CencelTaskSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  ListView.builder(
          itemCount: 5,
          itemBuilder: (contex,index){
            return taskitems();
          }));

  }
}
