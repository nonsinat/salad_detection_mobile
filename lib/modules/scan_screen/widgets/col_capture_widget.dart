import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/asset_image.dart';
import '../../../widgets/custom_attach_widget.dart';


class ColumnCaptureWidget extends StatelessWidget {
  Function()? onCamera;
  Function()? onGallery;

  ColumnCaptureWidget({super.key, this.onCamera, this.onGallery});

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
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onCamera,
              child: CustomAttachListWidget(
                title: "CAMERA",
                svg: AssetImages.camera_icon,
              ),
            ),
            const SizedBox(
              width: 28,
            ),
            InkWell(
              onTap: onGallery,
              child: CustomAttachListWidget(
                title: "GALLERY",
                svg: AssetImages.gallery_icon,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
