import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_desktop_widget.dart';
import 'package:responsive_course/view/Widgets/custom_drawe.dart';
import 'package:responsive_course/view/Widgets/custom_list_for_tablet.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_view.dart';
import 'package:responsive_course/view/Widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(flex: 1, child: CustomDesktopWidget())
      ],
    );
  }
}
