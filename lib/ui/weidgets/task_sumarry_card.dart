import 'package:flutter/material.dart';

class tasksummarycard extends StatelessWidget {
  const tasksummarycard({
    super.key, required this.count, required this.title,
  });
  final String count;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(count,style: Theme.of(context).textTheme.titleLarge,),
            Text(title,style: Theme.of(context).textTheme.titleSmall,)
          ],
        ),
      ),
    );
  }
}
