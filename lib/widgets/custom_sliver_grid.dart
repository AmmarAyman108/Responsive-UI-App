import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
      itemBuilder: (context, index) => const CustomItem(),
    );
  }
}
