import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_grid.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        CustomSliverGrid(),
        CustomSliverlistView()
      ],
    );
  }
}
