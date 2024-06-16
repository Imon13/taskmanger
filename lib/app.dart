import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/spalsh_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';

class TaskManegerApp extends StatelessWidget {
  const TaskManegerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SpalshSceen(),
      theme:lightTheameData()

    );
  }
}
ThemeData lightTheameData(){
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(
            color: Colors.grey.shade400
          ),
          labelStyle: TextStyle(
              color: Colors.grey.shade400
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          ),

      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.green,
        foregroundColor: AppColors.white,
        padding: EdgeInsets.symmetric(vertical: 12),
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )

      )
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
        titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.grey
        )

    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey,
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18
        )
      )
    )

  );
}
