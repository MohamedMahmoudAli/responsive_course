import 'dart:developer';

import 'package:flutter/material.dart';

class AdabtiveLayoutBuilder extends StatelessWidget {
  const AdabtiveLayoutBuilder(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final Widget mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      log(Constraints.maxWidth.toString());
      log(MediaQuery.of(context).size.width.toString());
      if (Constraints.maxWidth < 600) {
        return mobileLayout;
      } else if (Constraints.maxWidth < 900) {
        return tabletLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
