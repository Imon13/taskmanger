import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/cencel_task_sceen.dart';
import 'package:taskmanger/ui/sceen/completed_task_sceen.dart';
import 'package:taskmanger/ui/sceen/new_task_sceen.dart';
import 'package:taskmanger/ui/sceen/progress_task_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';

import '../weidgets/profile_appber.dart';

class MainBottomSceen extends StatefulWidget {
  const MainBottomSceen({super.key});

  @override
  State<MainBottomSceen> createState() => _MainBottomSceenState();
}

class _MainBottomSceenState extends State<MainBottomSceen> {
  int _selectedIndex=0;
 final List<Widget> _sceens =[
    NewTaskSceen(),
    CompletedTaskSceen(),
    ProgressTaskSceen(),
    CencelTaskSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
       onTap: (index){
         _selectedIndex= index;
         if(mounted){
           setState(() {

           });
         }
       },
          selectedItemColor: AppColors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'New Task'),
            BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Completed Task'),
            BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'Progress Task'),
            BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'Cencel Task'),

      ]),
         appBar: profileAppber(context),
      body: _sceens[_selectedIndex]
      


    );
  }

}
