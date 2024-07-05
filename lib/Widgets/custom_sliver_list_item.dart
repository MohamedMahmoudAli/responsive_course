import 'package:flutter/material.dart';

class CustomSliverListItem extends StatelessWidget {
  const CustomSliverListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
    );
  }
}
