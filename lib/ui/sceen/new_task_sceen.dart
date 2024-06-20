import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/add_new_task_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';

import '../weidgets/profile_appber.dart';
import '../weidgets/task_items_sceen.dart';
import '../weidgets/task_sumarry_card.dart';

class NewTaskSceen extends StatefulWidget {
  const NewTaskSceen({super.key});

  @override
  State<NewTaskSceen> createState() => _NewTaskSceenState();
}

class _NewTaskSceenState extends State<NewTaskSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Padding(
        padding: const EdgeInsets.only(top: 8,right: 8, left: 8),
        child: Column(
          children: [
            buildsummarysection(),
            SizedBox(height: 10,),
            Expanded(child: ListView.builder(
              itemCount: 5,
                itemBuilder: (contex,index){
              return taskitems();
            }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTapAddbutton,
        child: Icon(Icons.add),
      backgroundColor: AppColors.green,
        foregroundColor: Colors.white,
      )
      ,
    ) ;
  }
  void _onTapAddbutton(){
    Navigator.push(context, MaterialPageRoute(builder:
        (context)=>AddNewTaskSceen()));

  }

}

class taskitems extends StatelessWidget {
  const taskitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        title: Text('title is here'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('description wiil be here'),
            Text('date:1-5-12',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text('New'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                ),
                ButtonBar(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


