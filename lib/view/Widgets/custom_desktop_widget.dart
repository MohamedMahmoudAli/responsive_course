import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 18),
        Expanded(
          flex: 1,
          child: CustomItem(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
