import 'package:flutter/material.dart';
import 'package:responsive_course/models/drawer_model_item.dart';

class CustomDrawerListItem extends StatelessWidget {
  const CustomDrawerListItem({super.key, required this.item});
  final DrawerModelListItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          item.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      leading: Icon(item.icon),
    );
  }
}
