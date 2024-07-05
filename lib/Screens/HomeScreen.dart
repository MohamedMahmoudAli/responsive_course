// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_drawe.dart';
import 'package:responsive_course/view/home_view_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: const Color(0xffDBDBDB),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
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
