import 'package:flutter/material.dart';
import 'package:responsive_course/Widgets/custom_sliver_grid.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBDBDB),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            CustomSliverGrid(),
          ],
        ),
      ),
    );
  }
}
