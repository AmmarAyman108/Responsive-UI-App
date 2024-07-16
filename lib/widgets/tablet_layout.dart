import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_list_view.dart';
import 'package:responsive_ui_test_app/widgets/custom_sliver_grid_tablet_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        CustomSliverGridTabletLayout()
      ],
    );
  }
}
