import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/custom_sliver_grid.dart';
import 'package:responsive_ui_test_app/widgets/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    


    return 
        const CustomScrollView(
            slivers: [
              CustomSliverGrid(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              CustomSliverList()
            ],
          );
  }
}
