import 'package:flutter/material.dart';

class CustomSliverlistView extends StatelessWidget {
  const CustomSliverlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: CustomSliverListItem(),
            ));
  }
}

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
