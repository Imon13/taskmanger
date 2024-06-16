import 'package:flutter/material.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';

class SinginSceen extends StatefulWidget {
  const SinginSceen({super.key});

  @override
  State<SinginSceen> createState() => _SinginSceenState();
}

class _SinginSceenState extends State<SinginSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
          child:  SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80,),
                  Text("Get Started With"),
                  SizedBox(height: 16,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'email',
                      label: Text('email'),
                    ),

                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'password',
                        label: Text('password'),
                    ),

                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){},
                      child: Icon(Icons.arrow_right_alt_outlined))

                ],
              ),
            ),
          )),
    ) ;
  }
}
