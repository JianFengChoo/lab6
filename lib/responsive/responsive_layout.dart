import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget mobileScaffold2;
  final Widget tabletScaffold2;

  ResponsiveLayout({
   required this.mobileScaffold,
   required this.tabletScaffold,
   required this.mobileScaffold2,
   required this.tabletScaffold2,
});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      }
      else {
        return tabletScaffold;
      }
    },);
  }
}
