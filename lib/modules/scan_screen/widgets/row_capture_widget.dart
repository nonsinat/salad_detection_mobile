import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/asset_image.dart';
import '../../../widgets/custom_small_attWidget.dart';

class RowCaptureWidget extends StatelessWidget {
  Function()? onCamera;
  Function()? onGallery;
  RowCaptureWidget({super.key, this.onCamera, this.onGallery});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0xFFDEDEDE),
      dashPattern: const <double>[8, 10],
      radius: const Radius.circular(10),
      borderType: BorderType.RRect,
      strokeWidth: 1,
      borderPadding: const EdgeInsets.all(1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onCamera,
              child: CustomSmallAttachWidget(
                title: "CAMERA",
                svg: AssetImages.camera_icon,
              ),
            ),
            const SizedBox(
              width: 28,
            ),
            InkWell(
              onTap: onGallery,
              child: CustomSmallAttachWidget(
                title: "GALLERY",
                svg: AssetImages.gallery_icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
