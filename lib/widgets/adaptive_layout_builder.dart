
import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.deskTopLayout,
  });
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder deskTopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= 870) {
          return tabletLayout(context);
        } else {
          return deskTopLayout(context);
        }
      },
    );
  }
}
