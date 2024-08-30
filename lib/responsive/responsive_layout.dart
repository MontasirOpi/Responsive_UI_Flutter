import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBoby;

  const ResponsiveLayout(
      {super.key,
      required this.mobileBody,
      required this.desktopBody,
      required this.tabletBoby});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else if (constraints.maxWidth < tabletWidth) {
        return tabletBoby;
      } else {
        return desktopBody;
      }
    });
  }
}
