
import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/desktop_body.dart';
import 'package:responsive_app/responsive/mobile_body.dart';
import 'package:responsive_app/responsive/responsive_layout.dart';
import 'package:responsive_app/responsive/tablet_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(), 
        desktopBody: DesktopBody(),
         tabletBoby: TabletBody(),
         ),
    );
  }
}