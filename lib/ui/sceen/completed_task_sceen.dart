import 'package:flutter/material.dart';

import 'new_task_sceen.dart';

class CompletedTaskSceen extends StatefulWidget {
  const CompletedTaskSceen({super.key});

  @override
  State<CompletedTaskSceen> createState() => _CompletedTaskSceenState();
}

class _CompletedTaskSceenState extends State<CompletedTaskSceen> {
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
