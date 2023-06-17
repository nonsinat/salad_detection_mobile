import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salad_detection_mobile_application/core/resources/asset_image.dart';
import 'package:salad_detection_mobile_application/core/themes/theme_constands.dart';
import '../../../core/constands/color_constands.dart';

import '../../../widgets/custom_bbox_widget.dart';
import '../../../widgets/custom_small_attWidget.dart';
import '../widgets/col_capture_widget.dart';
import '../widgets/row_capture_widget.dart';

class ScanImageScreen extends StatefulWidget {
  const ScanImageScreen({
    super.key,
  });

  @override
  State<ScanImageScreen> createState() => _ScanImageScreenState();
}

class _ScanImageScreenState extends State<ScanImageScreen> {
  int durationDelayed = 300;
  final ImagePicker _picker = ImagePicker();
  PickedFile? _imageFile;

  Future<void> pickImage() async {
    try {
      final pickedFile = await _picker.getImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile = pickedFile;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> pickerCamera() async {
    try {
      final pickedFile = await _picker.getImage(source: ImageSource.camera);
      setState(() {
        if (pickedFile != null) {
          _imageFile = pickedFile;
        }
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: AnimatedPadding(
            padding: EdgeInsets.only(top: _imageFile != null ? 24 : 60),
            duration: Duration(milliseconds: durationDelayed),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: AnimatedAlign(
                duration: Duration(milliseconds: durationDelayed),
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: _imageFile != null
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Detection",
                      style: ThemeConstands.headline5.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorConstand.primaryColor,
                      ),
                    ),
                    Text(
                      "Capture image to detection with AI",
                      style: ThemeConstands.bodyText2.copyWith(
                        color: ColorConstand.lightTrunk,
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: durationDelayed),
                      width: size.width,
                      height: _imageFile != null ? 18 : 44,
                    ),
                    _imageFile != null
                        ? rowCaptureWidget(size: size)
                        : scanEmptyWidget(size),
                    const SizedBox(
                      height: 34,
                    ),
                    AnimatedOpacity(
                      duration: Duration(milliseconds: durationDelayed - 200),
                      opacity: _imageFile != null ? 0 : 1,
                      child: AnimatedContainer(
                        width: _imageFile != null ? 0 : size.width,
                        height: _imageFile != null ? 0 : 120,
                        duration: Duration(milliseconds: durationDelayed),
                        alignment: Alignment.center,
                        child: ColumnCaptureWidget(
                          onCamera: () {
                            pickerCamera();
                          },
                          onGallery: () {
                            pickImage();
                          },
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: Duration(milliseconds: durationDelayed + 200),
                      opacity: _imageFile != null ? 1 : 0,
                      child: Column(
                        children: [
                          CustomBBoxWidget(
                            size: size,
                            title: "Desease",
                            titleColor: Colors.red,
                            description:
                                "Bacterial Small leaf spot symptoms are (target 0.25 points) leaf spots that are soaked in water 904-966-2836",
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          CustomBBoxWidget(
                            size: size,
                            title: "Treatment",
                            description:
                                "Bacterial Small leaf spot symptoms are (target 0.25 points) leaf spots that are soaked in water 904-966-2836",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget scanEmptyWidget(Size size) {
    return AnimatedContainer(
      duration: Duration(milliseconds: durationDelayed),
      width: size.width * .56,
      height: size.height * .28,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              AssetImages.empty_image,
            ),
          ),
          // corner top left
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 30,
              height: 2,
              color: ColorConstand.primaryColor,
            ),
          ),
          // corner under left
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 2,
              height: 30,
              color: ColorConstand.primaryColor,
            ),
          ),
          // corner top right
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 30,
              height: 2,
              color: ColorConstand.primaryColor,
            ),
          ),
          // corner under top right
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 2,
              height: 30,
              color: ColorConstand.primaryColor,
            ),
          ),
          // corner top right
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 30,
              height: 2,
              color: ColorConstand.primaryColor,
            ),
          ),
          // corner bottom right
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 2,
              height: 30,
              color: ColorConstand.primaryColor,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 30,
              height: 2,
              color: ColorConstand.primaryColor,
            ),
          ),

          // corner bottom right
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 2,
              height: 30,
              color: ColorConstand.primaryColor,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 30,
              height: 2,
              color: ColorConstand.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowCaptureWidget({
    required Size size,
  }) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: durationDelayed),
          width: size.width * .56,
          height: size.height * .28,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.withOpacity(.2)),
          ),
          child: AnimatedPadding(
            duration: Duration(milliseconds: durationDelayed),
            padding: EdgeInsets.all(_imageFile != null ? 8 : 80.0),
            child: _imageFile != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.file(
                      File(_imageFile!.path),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  )
                : SvgPicture.asset(
                    AssetImages.empty_image,
                  ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: durationDelayed),
          opacity: _imageFile != null ? 1 : 0,
          child: AnimatedContainer(
            duration: Duration(milliseconds: durationDelayed),
            width: _imageFile != null ? size.width * .27 : 0,
            height: _imageFile != null ? size.height * .25 : 0,
            child: RowCaptureWidget(
              onCamera: () {
                pickerCamera();
              },
              onGallery: () {
                pickImage();
              },
            ),
          ),
        ),
      ],
    );
  }
}
