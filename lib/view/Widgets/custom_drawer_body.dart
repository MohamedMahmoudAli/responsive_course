import 'package:flutter/material.dart';
import 'package:responsive_course/models/drawer_model_item.dart';
import 'package:responsive_course/view/Widgets/custom_drawer_item.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({
    super.key,
    required this.items,
  });

  final List<DrawerModelListItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CustomDrawerListItem(
        item: items[index],
      ),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
