import 'package:exemplo1/breakpoints.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/sections/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print('constraints.biggest: ${constraints.biggest}');
        print('constraints.smallest: ${constraints.smallest}');
        return Scaffold(
          drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,
          appBar: constraints.maxWidth < mobileBreakPoint
              ? PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
