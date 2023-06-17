import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';
import 'package:salad_detection_mobile_application/core/resources/asset_image.dart';
import 'package:salad_detection_mobile_application/core/themes/theme_constands.dart';
import 'package:salad_detection_mobile_application/modules/home_screen/home_screen.dart';
import 'package:salad_detection_mobile_application/widgets/bottom_navigation_bar_widget.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  GlobalKey<SplashScreen> myWidgetKey1 = GlobalKey<SplashScreen>();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), ()  {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      );
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        color: ColorConstand.primaryColor,
        height: 140,
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: LottieBuilder.asset(
          "assets/lotties/loading_animation.json",
          height: 140,
          width: 140,
          fit: BoxFit.fill,
        ),

      ),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: ColorConstand.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 58,
              backgroundColor: ColorConstand.whiteColor,
              child: SvgPicture.asset(AssetImages.logo_image),
            ),
            const  SizedBox(height: 18,),
            Text("Salad Detection",style: ThemeConstands.headline5.copyWith(fontWeight: FontWeight.bold,color: ColorConstand.whiteColor),),
          ],
        ),
      ),
    );
  }
}