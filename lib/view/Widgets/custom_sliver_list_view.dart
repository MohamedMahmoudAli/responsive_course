import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_item.dart';

class CustomSliverlistView extends StatelessWidget {
  const CustomSliverlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: CustomSliverListItem(),
            ));
  }
}

