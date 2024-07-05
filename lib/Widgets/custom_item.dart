import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text("Hello"),
          ),
        );
  }
}
