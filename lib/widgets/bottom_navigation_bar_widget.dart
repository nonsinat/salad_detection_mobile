import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salad_detection_mobile_application/core/constands/color_constands.dart';
import 'package:salad_detection_mobile_application/core/resources/asset_image.dart';
import 'package:salad_detection_mobile_application/core/themes/theme_constands.dart';
import 'package:salad_detection_mobile_application/modules/document_screen/views/document_screen.dart';
import 'package:salad_detection_mobile_application/modules/scan_screen/views/scan_screen.dart';

import '../modules/home_screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 1;

  final List<Widget> _screens = [
    HomeScreen(),
    ScanImageScreen(),
    DocumentationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
         
        ],
      ),
    );
  }
}


// class BottomNavigateBar extends StatefulWidget {
//   final int isActive;
//   const BottomNavigateBar({Key? key, required this.isActive}) : super(key: key);

//   @override
//   State<BottomNavigateBar> createState() => _BottomNavigateBarState();
// }

// class _BottomNavigateBarState extends State<BottomNavigateBar> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
    
//     return Container(
//       constraints:  BoxConstraints(
//           maxHeight: 86,
//           minHeight: 86,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(12), topRight: Radius.circular(12)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 0.5,
//             blurRadius: 9,
//             offset: const Offset(2, 2),
//           )
//         ],
//       ),
//       child: Column(

//         children: [
//         //  const BTSScoreWidget(),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: MaterialButton(
//                     padding: const EdgeInsets.all(0),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onPressed: () {
//                       if (widget.isActive != 1) {
//                         Navigator.pushReplacement(
//                           context,
//                           PageRouteBuilder(
//                             pageBuilder: (context, animation1, animation2) => const HomeScreen(),
//                             transitionDuration: Duration.zero,
//                             reverseTransitionDuration: Duration.zero,
//                           ),
//                         );
//                       } else {}
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 4,
//                           decoration: BoxDecoration(
//                               color: widget.isActive == 1
//                                   ? ColorConstand.primaryColor
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(6)),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 12),
//                           child: SvgPicture.asset(widget.isActive == 1
//                               ? AssetImages.fill_home_icon
//                               : AssetImages.fill_home_icon),
//                         ),
//                         Text("HOMENAV",
//                             style: ThemeConstands.overline
//                                 .copyWith(
//                                     color: widget.isActive == 1
//                                         ? ColorConstand.primaryColor
//                                         : ColorConstand.darkColor,
//                                     fontWeight: widget.isActive == 1
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     height: 1)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Expanded(
//                   child: MaterialButton(
//                     padding: const EdgeInsets.all(0),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onPressed: () {
//                       // if (widget.isActive != 2) {
//                       //   Navigator.pushReplacement(
//                       //     context,
//                       //     PageRouteBuilder(
//                       //       pageBuilder: (context, animation1, animation2) =>
//                       //           ScheduleScreen(),
//                       //       transitionDuration: Duration.zero,
//                       //       reverseTransitionDuration: Duration.zero,
//                       //     ),
//                       //   );
//                       // } else {}
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 4,
//                           decoration: BoxDecoration(
//                               color: widget.isActive == 2
//                                   ? ColorConstand.primaryColor
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(6)),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 12),
//                           child: SvgPicture.asset(widget.isActive == 2
//                               ? AssetImages.fill_home_icon
//                               : AssetImages.fill_home_icon),
//                         ),
//                         Text("SCHEDULENAV",
//                             style: ThemeConstands.overline
//                                 .copyWith(
//                                     color: widget.isActive == 2
//                                         ? ColorConstand.primaryColor
//                                         : ColorConstand.darkColor,
//                                     fontWeight: widget.isActive == 2
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     height: 1)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Expanded(
//                   child: MaterialButton(
//                     padding: const EdgeInsets.all(0),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onPressed: () {
//                       // if (widget.isActive != 3) {
//                       //   Navigator.pushReplacement(
//                       //     context,
//                       //     PageRouteBuilder(
//                       //       pageBuilder: (context, animation1, animation2) =>
//                       //           const ListSubjectEnterScoreScreen(),
//                       //       transitionDuration: Duration.zero,
//                       //       reverseTransitionDuration: Duration.zero,
//                       //     ),
//                       //   );
//                       // } else {}
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 4,
//                           decoration: BoxDecoration(
//                               color: widget.isActive == 3
//                                   ? ColorConstand.primaryColor
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(6)),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 12),
//                           child: SvgPicture.asset(widget.isActive == 3
//                               ? AssetImages.fill_home_icon
//                               : AssetImages.fill_home_icon,color:widget.isActive == 3?ColorConstand.primaryColor :ColorConstand.darkColor,width: 25,),
//                         ),
//                         Text("SCORE",
//                             style: ThemeConstands.overline
//                                 .copyWith(
//                                     color: widget.isActive == 3
//                                         ? ColorConstand.primaryColor
//                                         : ColorConstand.darkColor,
//                                     fontWeight: widget.isActive == 3
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     height: 1)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 // Class Timeline Tab
//                 Expanded(
//                   child: MaterialButton(
//                     padding: const EdgeInsets.all(0),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onPressed: () {
//                       // if (widget.isActive != 4) {
//                       //   Navigator.pushReplacement(
//                       //     context,
//                       //     PageRouteBuilder(
//                       //       pageBuilder: (context, animation1, animation2) => TimeLineScreen(selectIndex: 0),
//                       //       transitionDuration: Duration.zero,
//                       //       reverseTransitionDuration: Duration.zero,
//                       //     ),
//                       //   );
//                       // }
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 4,
//                           decoration: BoxDecoration(
//                               color: widget.isActive == 4
//                                   ? ColorConstand.primaryColor
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(6)),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 12),
//                           child: SvgPicture.asset(widget.isActive == 4
//                               ? AssetImages.fill_home_icon
//                               : AssetImages.fill_home_icon),
//                         ),
//                         Text(
//                           "TIMELINE",
//                           style: ThemeConstands.overline.copyWith(
//                               color: widget.isActive == 4
//                                   ? ColorConstand.primaryColor
//                                   : ColorConstand.darkColor,
//                               fontWeight: widget.isActive == 4
//                                   ? FontWeight.w700
//                                   : FontWeight.w400,
//                               height: 1),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Expanded(
//                   child: MaterialButton(
//                     padding: const EdgeInsets.all(0),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onPressed: () {
//                       if (widget.isActive != 5) {
//                         // Navigator.pushReplacement(
//                         //   context,
//                         //   PageRouteBuilder(
//                         //     pageBuilder: (context, animation1, animation2) => const MoreScreen(),
//                         //     transitionDuration: Duration.zero,
//                         //     reverseTransitionDuration: Duration.zero,
//                         //   ),
//                         // );
//                       } else {}
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 4,
//                           decoration: BoxDecoration(
//                               color: widget.isActive == 5
//                                   ? ColorConstand.primaryColor
//                                   : Colors.white,
//                               borderRadius: BorderRadius.circular(6)),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 12),
//                           child: SvgPicture.asset(widget.isActive == 5
//                               ? AssetImages.fill_home_icon
//                               : AssetImages.fill_home_icon),
//                         ),
//                         Text("MORENAV",
//                             style: ThemeConstands.overline
//                                 .copyWith(
//                                     color: widget.isActive == 5
//                                         ? ColorConstand.primaryColor
//                                         : ColorConstand.darkColor,
//                                     fontWeight: widget.isActive == 5
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     height: 1)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
