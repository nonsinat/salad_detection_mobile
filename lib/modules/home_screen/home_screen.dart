import 'package:flutter/material.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';

import '../../widgets/bottom_navigation_bar_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        height:size.height ,
        width: size.width,
        color: ColorConstand.primaryColor,
        child: Text("Homescreen"),
      ),
    );
  }
}