import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_item.dart';

class CustomTabletListItem extends StatelessWidget {
  const CustomTabletListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: AspectRatio(
                      aspectRatio: 1, child: CustomSliverListItem()),
                )),
      ),
    );
  }
}
