import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanger/ui/sceen/sing_in_sceen.dart';
import 'package:taskmanger/ui/utility/assets_paths.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';

class SpalshSceen extends StatefulWidget {
  const SpalshSceen({super.key});

  @override
  State<SpalshSceen> createState() => _SpalshSceenState();
}

class _SpalshSceenState extends State<SpalshSceen> {
  @override
  void initState() {
    super.initState();
    _moveToNextSceen();
  }
  Future<void> _moveToNextSceen () async{
    await Future.delayed(const Duration(seconds: 3));
    if(mounted){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SinginSceen()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackgroundWidgets(
        child: Center(
          child: SvgPicture.asset(AssetsPaths.appLogodSvg),

        ),
      )
      ,
    );
  }
}
