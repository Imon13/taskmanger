import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/assets_paths.dart';

class BackgroundWidgets extends StatelessWidget {
  const BackgroundWidgets({super.key, required this.child});
 final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(AssetsPaths.backgroundSvg,
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.fitWidth,

          ),
          child
        ],
      ),
    );
  }
}
// Center(
// child: SvgPicture.asset(AssetsPaths.appLogodSvg),
//
// ),