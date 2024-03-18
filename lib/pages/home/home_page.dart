import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/pages/home/layouts/desktop.dart';
import 'package:latihanresponsf/pages/home/layouts/mobile.dart';
import 'package:latihanresponsf/pages/home/layouts/tablet.dart';
import 'home_controller.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({super.key})
      : super(
            settings: const ResponsiveScreenSettings(
                desktopChangePoint: 1000, tabletChangePoint: 600));

  @override
  Widget? phone() {
    return buildMobileLayout();
  }

  @override
  Widget? tablet() {
    return buildTabletLayout();
  }

  @override
  Widget? desktop() {
    return buildDesktopLayout();
  }
}
