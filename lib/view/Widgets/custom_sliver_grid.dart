import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 30, crossAxisSpacing: 30, crossAxisCount: 2),
        itemBuilder: (context, index) => const CustomItem());
  }
}

