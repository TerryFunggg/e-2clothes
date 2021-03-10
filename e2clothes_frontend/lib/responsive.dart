import 'package:flutter/material.dart';

/**
 * Responsive class defined some devices width 
 * and wrap the LayoutBuilder to return correct view layout 
 * by current context width.
 */
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  static final mobileMaxWidth = 768;
  static final tabletMaxWidth = 1224;
  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  static double getContextWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static bool isMobile(BuildContext context) =>
      getContextWidth(context) < mobileMaxWidth;

  static bool isTablet(BuildContext context) {
    var width = getContextWidth(context);
    return width < tabletMaxWidth && width >= mobileMaxWidth;
  }

  static bool isDesktop(BuildContext context) =>
      getContextWidth(context) >= tabletMaxWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= tabletMaxWidth) {
        return desktop ?? mobile;
      } else if (constraints.maxWidth >= 650) {
        return tablet ?? mobile;
      } else {
        return mobile;
      }
    });
  }
}
