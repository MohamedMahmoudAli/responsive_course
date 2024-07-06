import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: LayoutBuilder(builder: (context, Constraints) {
        log(Constraints.maxWidth.toString());
        log(MediaQuery.of(context).size.width.toString());
        if (Constraints.maxWidth < 600) {
          return const MobileLayout();
        } else if (Constraints.maxWidth < 900) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}
