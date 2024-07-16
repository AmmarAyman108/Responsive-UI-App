import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_drawer.dart';
import 'package:responsive_ui_test_app/widgets/custom_item.dart';
import 'package:responsive_ui_test_app/widgets/custom_item_tile.dart';
import 'package:responsive_ui_test_app/widgets/tablet_layout.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 15, bottom: 10),
              child: Column(
                children: [
                  Expanded(flex: 2, child: CustomItem()),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(child: CustomItemTile()),
                ],
              ),
            )),
      ],
    );
  }
}
