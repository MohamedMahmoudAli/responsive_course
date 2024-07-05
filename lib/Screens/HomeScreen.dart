import 'package:flutter/material.dart';
import 'package:responsive_course/Widgets/custom_drawe.dart';
import 'package:responsive_course/Widgets/custom_sliver_grid.dart';
import 'package:responsive_course/Widgets/home_view_body.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();
    return Scaffold(
        key: ScaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: const Color(0xffDBDBDB),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              ScaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: const HomeViewBody());
  }
}
