import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<DrawerItemModel> items = [
      DrawerItemModel(
          icon: Icon(
            Icons.home,
          ),
          title: 'D A S H B O A R D'),
      DrawerItemModel(
          icon: Icon(
            Icons.settings,
          ),
          title: 'S E T T I N G S'),
      DrawerItemModel(
          icon: Icon(
            Icons.help,
          ),
          title: 'A B O U T'),
      DrawerItemModel(
          icon: Icon(
            Icons.logout,
          ),
          title: 'L O G O U T'),
    ];
    return Drawer(
      backgroundColor: const Color(0XffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.favorite,
            size: 50,
          )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: items[index].icon,
                title: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topLeft,
                  child: Text(
                    items[index].title,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
