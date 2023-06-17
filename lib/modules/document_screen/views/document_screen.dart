import 'package:flutter/material.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';


class DocumentationScreen extends StatefulWidget {
  const DocumentationScreen({super.key});

  @override
  State<DocumentationScreen> createState() => _DocumentationScreenState();
}

class _DocumentationScreenState extends State<DocumentationScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        color: ColorConstand.darkColor,
        child: Text("Document Screen"),
      ),
    );
  }
}