import 'package:flutter/material.dart';
import 'package:responsive_ui_test_app/widgets/adaptive_layout_builder.dart';
import 'package:responsive_ui_test_app/widgets/custom_drawer.dart';
import 'package:responsive_ui_test_app/widgets/desktop_layout.dart';
import 'package:responsive_ui_test_app/widgets/mobile_layout.dart';
import 'package:responsive_ui_test_app/widgets/tablet_layout.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> key = GlobalKey();

    return Scaffold(
      key: key,
      appBar: buildAppBar(context, key),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
        child: AdaptiveLayoutBuilder(
          deskTopLayout: (context) => const DeskTopLayout(),
          mobileLayout: (context) => const DecoratedBox(
            decoration: BoxDecoration(),
            child: MobileLayout(),
          ),
          tabletLayout: (context) => const TabletLayout(),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }

  AppBar? buildAppBar(BuildContext context, GlobalKey<ScaffoldState> key) {
    return MediaQuery.sizeOf(context).width <= 900
        ? AppBar(
            leading: IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            backgroundColor: Colors.black,
          )
        : null;
  }
}
