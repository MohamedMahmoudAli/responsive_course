import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        Expanded(
          flex: 1,
          child: CustomItem(
            color: Color(0xffECECEC),
          ),
        )
      ],
    );
  }
}
