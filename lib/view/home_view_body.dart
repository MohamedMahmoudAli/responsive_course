
import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/adabtive_layout_builder.dart';
import 'package:responsive_course/view/Widgets/desktop_layout.dart';
import 'package:responsive_course/view/Widgets/mobile_layout.dart';
import 'package:responsive_course/view/Widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: AdabtiveLayoutBuilder(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ));
  }
}
