import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;


  // source :  https://www.youtube.com/watch?v=9bo1V9STW2c&t=113s

  const ResponsivePage(
      {super.key, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobileScaffold;
          } else if (constraints.maxWidth < 1100) {
            return tabletScaffold;
          } else {
            return desktopScaffold;
          }
        });
  }



}
