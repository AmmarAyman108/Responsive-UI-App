// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_item_tile.dart';

class CustomSliverGridDesktopLayout extends StatelessWidget {
  const CustomSliverGridDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          childAspectRatio: 6 / 1,
          mainAxisSpacing: 20),
      itemCount: 50,
      itemBuilder: (context, index) => const CustomItemTile(),
    );
  }
}
