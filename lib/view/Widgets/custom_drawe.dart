import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_course/models/drawer_model_item.dart';
import 'package:responsive_course/view/Widgets/custom_drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerModelListItem> items = [
    DrawerModelListItem(title: "Dashboard", icon: Icons.home),
    DrawerModelListItem(title: "Setting", icon: Icons.settings),
    DrawerModelListItem(title: "About", icon: Icons.info),
    DrawerModelListItem(title: "Logout", icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                FontAwesomeIcons.solidHeart,
                size: 50,
              ),
            ),
            CustomDrawerBody(items: items)
          ],
        ),
      ),
    );
  }
}
