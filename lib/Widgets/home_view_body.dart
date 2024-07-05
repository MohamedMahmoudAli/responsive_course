import 'package:flutter/material.dart';
import 'package:responsive_course/Widgets/custom_sliver_grid.dart';
import 'package:responsive_course/Widgets/custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        CustomSliverlistView()
      ],
    );
  }
}
