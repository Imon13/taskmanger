import 'package:flutter/material.dart';

import 'new_task_sceen.dart';

class ProgressTaskSceen extends StatefulWidget {
  const ProgressTaskSceen({super.key});

  @override
  State<ProgressTaskSceen> createState() => _ProgressTaskSceenState();
}

class _ProgressTaskSceenState extends State<ProgressTaskSceen> {
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
