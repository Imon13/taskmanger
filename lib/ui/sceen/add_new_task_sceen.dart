import 'package:flutter/material.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';

import '../weidgets/profile_appber.dart';

class AddNewTaskSceen extends StatefulWidget {
  const AddNewTaskSceen({super.key});

  @override
  State<AddNewTaskSceen> createState() => _AddNewTaskSceenState();
}

class _AddNewTaskSceenState extends State<AddNewTaskSceen> {
  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _descriptionTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackgroundWidgets(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: _titleTEcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'title',
                    label: Text('title')
                  ),

                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _descriptionTEcontroller,
                  decoration: InputDecoration(
                    hintText: 'description',
                    label: Text('description')
                  ),
                  maxLines: 4,


                ),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){}, child:Text('Add'))
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {

    super.dispose();
    _titleTEcontroller.dispose();
    _descriptionTEcontroller.dispose();
  }
}
