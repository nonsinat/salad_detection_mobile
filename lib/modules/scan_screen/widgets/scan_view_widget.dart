import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';


class ScanViewWidget extends StatelessWidget {
  const ScanViewWidget({
    Key? key,
    required MobileScannerController mobileScannerController,
    required this.onDetect,
  })  : _mobileScannerController = mobileScannerController,
        super(key: key);

  final MobileScannerController _mobileScannerController;
  final Function(Barcode barcode, MobileScannerArguments? args)? onDetect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: MobileScanner(
                allowDuplicates: false,
                controller: _mobileScannerController,
                onDetect: onDetect!,
              ),
            ),
          ),
          Positioned(
            top: -5,
            left: -5,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                border:  Border(
                  top: BorderSide(color: ColorConstand.primaryColor, width: 2.0),
                  left: BorderSide(
                    color: ColorConstand.primaryColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: ColorConstand.primaryColor, width: 2.0),
                  right: BorderSide(
                    color: ColorConstand.primaryColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: ColorConstand.primaryColor, width: 2.0),
                  right: BorderSide(
                    color: ColorConstand.primaryColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            left: -5,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: ColorConstand.primaryColor, width: 2.0),
                  left: BorderSide(color: ColorConstand.primaryColor, width: 2.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
