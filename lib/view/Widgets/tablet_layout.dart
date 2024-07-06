import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_list_for_tablet.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomTabletListItem(),
        CustomSliverlistView()
      ],
    );
  }
}
