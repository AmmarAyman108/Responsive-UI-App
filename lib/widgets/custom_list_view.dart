import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 20),
          child: AspectRatio(aspectRatio: 1, child: CustomItem()),
        ),
      ),
    );
  }
}
