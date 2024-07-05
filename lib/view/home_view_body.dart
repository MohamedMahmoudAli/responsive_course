import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_course/view/Widgets/custom_list_for_tablet.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_grid.dart';
import 'package:responsive_course/view/Widgets/custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, Constraints) {
              if (Constraints.maxWidth < 600) {
                return const CustomSliverGrid();
              } else {
                return const CustomTabletList();
              }
            }),
          ),
          const CustomSliverlistView()
        ],
      ),
    );
  }
}
