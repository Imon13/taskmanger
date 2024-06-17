import 'package:flutter/material.dart';
import 'package:taskmanger/ui/weidgets/task_sumarry_card.dart';

class buildsummarysection extends StatelessWidget {
  const buildsummarysection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          tasksummarycard(
            title: 'New Task',
            count: '34',
          ),
          tasksummarycard(
            title: 'Complete Task',
            count: '29',
          ),  tasksummarycard(
            title: 'Inprogress Task',
            count: '24',
          ),  tasksummarycard(
            title: 'Cencel Task',
            count: '14',
          ),
        ],
      ),
    );
  }
}
