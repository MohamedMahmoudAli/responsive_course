import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_course/models/drawer_model_item.dart';
import 'package:responsive_course/view/Widgets/custom_drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerModelListItem> items = [
    DrawerModelListItem(title: "D a s h b o a r d", icon: Icons.home),
    DrawerModelListItem(title: "S e t t i n g", icon: Icons.settings),
    DrawerModelListItem(title: "A b o u t", icon: Icons.info),
    DrawerModelListItem(title: "L o g o u t", icon: Icons.logout),
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
                size: 56,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomDrawerBody(items: items)
          ],
        ),
      ),
    );
  }
}
