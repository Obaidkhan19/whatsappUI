import 'package:flutter/material.dart';

class Responsive_layout extends StatelessWidget {

  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const Responsive_layout({Key? key, required this.mobileScreenLayout, required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts){
      if(constrainsts.maxWidth > 900){
        // WEB SCREEN
        return webScreenLayout;
      }
      // MOBILE SCREEN
      return mobileScreenLayout;
    });
  }
}
