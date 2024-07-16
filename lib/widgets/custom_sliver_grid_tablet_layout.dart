
import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_item_tile.dart';

class CustomSliverGridTabletLayout extends StatelessWidget {
  const CustomSliverGridTabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 6 / 1,
          mainAxisSpacing: 20),
      itemCount: 50,
      itemBuilder: (context, index) => const CustomItemTile(),
    );
  }
}