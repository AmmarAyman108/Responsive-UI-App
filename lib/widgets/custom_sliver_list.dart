import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_item_tile.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 10),
        child: CustomItemTile(),
      ),
    );
  }
}
