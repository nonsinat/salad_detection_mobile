import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salad_detection_mobile_application/core/themes/theme_constands.dart';

import '../../../core/constands/color_constands.dart';

class CustomSmallAttachWidget extends StatelessWidget {
  final String title, svg;
  double? width;
  double? height;

  CustomSmallAttachWidget({
    Key? key,
    required this.title,
    required this.svg,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0xFFDEDEDE),
      dashPattern: const <double>[8, 10],
      radius: const Radius.circular(10),
      borderType: BorderType.RRect,
      strokeWidth: 1,
      borderPadding: const EdgeInsets.all(1),
      child: Container(
        height: height ?? 100,
        width: width ?? 100,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svg,
              height: 24,
              width: 18,
              color: ColorConstand.lightTrunk,
            ),
            const SizedBox(
              height: 6.75,
            ),
            Text(
              title,
              style: ThemeConstands.caption
                  .copyWith(color: ColorConstand.darkColor.withOpacity(.8)),
            ),
          ],
        ),
      ),
    );
  }
}
