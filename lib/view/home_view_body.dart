import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_course/view/Widgets/adabtive_layout_builder.dart';
import 'package:responsive_course/view/Widgets/custom_list_for_tablet.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_grid.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_view.dart';
import 'package:responsive_course/view/Widgets/desktop_layout.dart';
import 'package:responsive_course/view/Widgets/mobile_layout.dart';
import 'package:responsive_course/view/Widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: AdabtiveLayoutBuilder(
          mobileLayout: MobileLayout(),
          tabletLayout: TabletLayout(),
          desktopLayout: DesktopLayout(),
        ));
  }
}
