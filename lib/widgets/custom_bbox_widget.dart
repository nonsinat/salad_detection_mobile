import 'package:flutter/material.dart';

import '../core/constands/color_constands.dart';
import '../core/themes/theme_constands.dart';

class CustomBBoxWidget extends StatelessWidget {
  final String title;
  final String description;
  Color? titleColor;

  CustomBBoxWidget({
    super.key,
    required this.size,
    this.titleColor,
    required this.title,
    required this.description,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: ColorConstand.whiteColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: const Color(0xFF919EAB).withOpacity(.2),
          ),
          BoxShadow(
              offset: const Offset(0, 1),
              color: const Color(0xFF919EAB).withOpacity(.1),
              blurRadius: 4)
        ],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ThemeConstands.subtitle1.copyWith(
                color: titleColor ?? ColorConstand.primaryColor,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: ThemeConstands.bodyText2,
          ),
        ],
      ),
    );
  }
}
