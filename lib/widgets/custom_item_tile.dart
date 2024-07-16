import 'package:flutter/material.dart';

class CustomItemTile extends StatelessWidget {
  const CustomItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
          color: const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
