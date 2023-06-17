import 'package:flutter/material.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';
import 'package:salad_detection_mobile_application/modules/splash_screen/splash_screen.dart';

import 'core/themes/build_material_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: buildMaterialColor(ColorConstand.primaryColor),
      ),
      home: const SplashScreen(),
    );
  }
}
