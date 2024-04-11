import 'package:doggo_app/screens/tablet/tablet_parent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mobile/mobile_parent.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 600){
          return const Tablet();
        }else{
          return const Mobile();
        }
      },
    );
  }
}
